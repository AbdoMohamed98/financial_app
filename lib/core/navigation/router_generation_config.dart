import 'package:financial_app/core/navigation/approutes.dart';
import 'package:financial_app/views/forgetpasswordview.dart';
import 'package:financial_app/views/loginview.dart';
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
   
      ]);
}
