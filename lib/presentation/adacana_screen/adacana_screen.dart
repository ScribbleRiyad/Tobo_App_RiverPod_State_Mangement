import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';

class AdacanaScreen extends StatelessWidget {
  const AdacanaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 325.v,
                          width: 238.h,
                          onTap: () {
                            onTapImgLogo(context);
                          })
                    ]))));
  }

  /// Navigates to the loginOrSignupScreen when the action is triggered.
  onTapImgLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOrSignupScreen);
  }
}
