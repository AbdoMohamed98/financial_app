import 'package:financial_app/core/navigation/approutes.dart';
import 'package:financial_app/views/createnewpasswordview.dart';
import 'package:financial_app/views/forgetpasswordview.dart';
import 'package:financial_app/views/loginview.dart';
import 'package:financial_app/views/otpverification.dart';
import 'package:financial_app/views/passwordchanged.dart';
import 'package:financial_app/views/regesterview.dart';
import 'package:financial_app/views/welcomeview.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.welcomeview,
    routes: [
      GoRoute(path: Approutes.welcomeview,
      name:Approutes.welcomeview ,
       builder: (context, state) => const Welcomeview()),
      GoRoute(path: Approutes.loginview,
      name: Approutes.loginview,
       builder: (context, state) => const Loginview()),
      GoRoute(path:Approutes.forgetpasswordview, 
      name: Approutes.forgetpasswordview,
      builder: (context, state) => const Forgetpasswordview()),
      GoRoute(path:Approutes.registerview,
      name: Approutes.registerview,
       builder: (context, state) => const Regesterview()),
       GoRoute(path: Approutes.createnewpasswordview,
       name: Approutes.createnewpasswordview,
       builder: (context, state) => const Createnewpasswordview()),
       GoRoute(path: Approutes.passwordchanged,
       name: Approutes.passwordchanged,
       builder: (context, state) => const Passwordchanged(),
       ),
       GoRoute(path: Approutes.otpVerificationview,
       name: Approutes.otpVerificationview,
       builder: (context, state) => const Otpverificationview(), // Replace with actual phone number
       ),
   
      ]);
}
