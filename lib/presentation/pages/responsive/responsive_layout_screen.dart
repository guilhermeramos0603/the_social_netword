import 'package:flutter/material.dart';
import 'package:the_social_network/app/util/dimensions.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
    final Widget webScreenWidget;
    final Widget mobileScreenWidget;
  const ResponsiveLayoutScreen({super.key, required this.webScreenWidget, required this.mobileScreenWidget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > webScreenSize) {
        return webScreenWidget;
      }
      return mobileScreenWidget;
    });
  }
}