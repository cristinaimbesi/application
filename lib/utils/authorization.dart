import 'package:fitbitter/fitbitter.dart';
import 'package:meb_application/utils/stringpage.dart';

void Authorizations(context) async {
  String? userId = await FitbitConnector.authorize(
      context: context, //non è un parametro required
      clientID: Strings.fitbitClientID,
      clientSecret: Strings.fitbitClientSecret,
      redirectUri: Strings.fitbitRedirectUri,
      callbackUrlScheme: Strings.fitbitCallbackScheme);
}
