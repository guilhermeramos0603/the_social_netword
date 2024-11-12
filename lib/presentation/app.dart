import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:the_social_network/app/util/colors.dart';
import 'package:the_social_network/presentation/pages/mobile/mobile_home_page.dart';
import 'package:the_social_network/presentation/pages/responsive/responsive_layout_screen.dart';
import 'package:the_social_network/presentation/pages/web/web_home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "The Social Network",
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayoutScreen(webScreenWidget: WebHomePage(), mobileScreenWidget: MobileHomePage(),),
    );
  }
}