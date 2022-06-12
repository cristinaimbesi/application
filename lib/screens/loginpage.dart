import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
//import 'package:meb_application/screens/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/';
  static const routename = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        _toMainPage(context);
      },
    );
  } // build

  void _toMainPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/main');
  }
}

class SignupData {} // LoginScreen