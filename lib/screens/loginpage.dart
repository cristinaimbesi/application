import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:meb_application/repositories/databaseRepository.dart';
import 'package:meb_application/screens/mainpage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../fitbit_entities/access_token.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/';
  static const routename = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late AccessTokenEntity accessTokenEntity = AccessTokenEntity(
      accessToken: '',
      expiresIn: 0,
      refreshToken: '',
      scope: '',
      tokenType: '',
      userId: '');

  @override
  void initState() {
    super.initState();
    //Check if the user is already logged in before rendering the login page
    _checkLogin();
  } //initState

  void _checkLogin() async {
    //Get the SharedPreference instance and check if the value of the 'username' filed is set or not
    final sp = await SharedPreferences.getInstance();
    if (sp.getString('username') != null) {
      //If 'username is set, push the HomePage
      _toMainPage(context);
    } //if
  } //_checkLogin

  Future<String> _loginUser(LoginData data) async {
    if (data.name == 'cappongiacomo@gmail.com' && data.password == 'ciao') {
      //da cambiare con email e pass del prof
      return '';
    } else {
      return 'Wrong credentials';
    }
  } // _loginUser

  Future<String> _signUpUser(SignupData data) async {
    return 'To be implemented';
  } // _signUpUser

  Future<String> _recoverPassword(String email) async {
    return 'Recover password functionality needs to be implemented';
  } // _recoverPassword

  @override
  Widget build(BuildContext context) {
    return Consumer<DatabaseRepository>(builder: (child, dao, _) {
      return FlutterLogin(
        title: 'ApPlant',
        theme: LoginTheme(
          primaryColor: const Color.fromARGB(255, 109, 148, 129),
        ),
        onLogin: _loginUser,
        onSignup: _loginUser,
        onRecoverPassword: _recoverPassword,
        //logo: Image.asset('images/logo.jpeg'),
        //logoTag: 'images/logo.jpeg',
        onSubmitAnimationCompleted: () async {
          try {
            final Dio _dio = Dio();
            String code = '4d24c20846155800777a8b33840742e7908617cc';
            final _baseUrl =
                'https://api.fitbit.com/oauth2/token?code=${code}&grant_type=authorization_code&redirect_uri=http://localhost';

            _dio.options.headers['content-Type'] =
                'application/x-www-form-urlencoded';
            _dio.options.headers["authorization"] =
                "Basic MjM4TFRNOjBlNDExNDYyMmQ0Yzc1MTE4YTNmZWMxYmYzNTEyNTgw";

            Response response = await _dio.post(_baseUrl);

            if (response.statusCode == 200) {
              accessTokenEntity = AccessTokenEntity.fromJson(response.data);
              dao.setAccessTokenEntity(accessTokenEntity);
              dao.setSleepObject();
              dao.setStepObject();
            } else {
              print('Repeat');
            }
            print('Response output: ${accessTokenEntity.toJson()}');
          } catch (e) {
            print(e.toString());
          }
          _toMainPage(context);
        },
      );
    });
  } // build

  void _toMainPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainPage(
          accessTokenEntity: accessTokenEntity,
        ),
      ),
    );

    //Navigator.of(context).pushReplacementNamed('/main');
  }
}

class SignupData {} // LoginScreen