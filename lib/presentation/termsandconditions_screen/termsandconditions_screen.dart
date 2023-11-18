import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todo_app/widgets/app_bar/custom_app_bar.dart';

class TermsandconditionsScreen extends StatelessWidget {
  const TermsandconditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 50.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 13.v),
                      SizedBox(
                          width: 155.h,
                          child: Text("msg_terms_and_conditions".tr,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium!
                                  .copyWith(height: 1.36))),
                      SizedBox(height: 63.v),
                      Container(
                          width: 285.h,
                          margin: EdgeInsets.only(right: 25.h),
                          child: Text("msg_lorem_ipsum_dolor2".tr,
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallOnPrimary_1
                                  .copyWith(height: 2.00)))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.fromLTRB(32.h, 16.v, 319.h, 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
