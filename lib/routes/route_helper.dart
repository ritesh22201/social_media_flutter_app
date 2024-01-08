import 'package:social_media_flutter_app/pages/authentication/sign_in_page.dart';
import 'package:social_media_flutter_app/pages/authentication/sign_up_page.dart';
import 'package:social_media_flutter_app/routes/route_constant.dart';
import 'package:get/get.dart';

class RouteHelper {
  static String getSignupPageRoute () => RouteConstant.signup;
  static String getSignInPageRoute () => RouteConstant.signin;

  static List <GetPage> routes = [
    GetPage(name: RouteConstant.signup, page: () => const SignUpPage()),
    GetPage(name: RouteConstant.signin, page: () => const SignInPage())
  ];
}