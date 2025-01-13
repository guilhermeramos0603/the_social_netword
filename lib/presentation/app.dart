import 'package:flutter/material.dart';
import 'package:the_social_network/app/config/firebase_auth.dart';
import 'package:the_social_network/app/util/colors.dart';
import 'package:the_social_network/data/datasources/auth_remote_datasource.dart';
import 'package:the_social_network/data/repositories/auth_repository_imp.dart';
import 'package:the_social_network/domain/usecases/create_user_usecase.dart';
import 'package:the_social_network/presentation/controllers/signup_controller.dart';

import 'package:the_social_network/presentation/pages/mobile/mobile_sigup_page.dart';
import 'package:the_social_network/presentation/pages/responsive/responsive_layout_screen.dart';
import 'package:the_social_network/presentation/pages/web/web_home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "The Social Network",
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: ResponsiveLayoutScreen(
        webScreenWidget: const WebHomePage(),
        mobileScreenWidget: MobileSignupPage(
          signupController: SignupController(
            createUserUsecase: CreateUserUsecase(
              authRepository: AuthRepositoryImp(
                authRemoteDatasource: AuthRemoteDatasource(
                  auth: FirebaseAuthConfig(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
