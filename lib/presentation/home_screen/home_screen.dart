import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 30.h,
            top: 79.v,
            right: 30.h,
          ),
          child: Column(
            children: [
              _buildProfileDetails(context),
              SizedBox(height: 47.v),
              _buildPersonality(context),
              SizedBox(height: 13.v),
              _buildWorkTodayS(context),
              SizedBox(height: 13.v),
              _buildSetting(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileDetails(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 84.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfileImage,
            height: 139.adaptSize,
            width: 139.adaptSize,
            radius: BorderRadius.circular(
              69.h,
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Text(
              "lbl_adalah".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_alcanasatre".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Text(
              "msg_joined_6_month_ago".tr,
              style: CustomTextStyles.bodySmallOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPersonality(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 18.v,
            width: 20.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Spacer(
            flex: 45,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_personality".tr,
              style: CustomTextStyles.titleMediumSecondaryContainer,
            ),
          ),
          Spacer(
            flex: 54,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgStroke1,
            height: 6.v,
            width: 5.h,
            radius: BorderRadius.circular(
              2.h,
            ),
            margin: EdgeInsets.only(
              top: 10.v,
              right: 5.h,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWorkTodayS(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillDeepPurpleA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFile,
            height: 20.v,
            width: 17.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 3.v,
              bottom: 3.v,
            ),
          ),
          Spacer(
            flex: 43,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_work_today_s".tr,
              style: CustomTextStyles.titleMediumDeeppurpleA400,
            ),
          ),
          Spacer(
            flex: 56,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgStroke1DeepPurpleA400,
            height: 6.v,
            width: 5.h,
            radius: BorderRadius.circular(
              2.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 10.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSetting(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 20.v,
            width: 19.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 4.v,
              bottom: 4.v,
            ),
          ),
          Spacer(
            flex: 45,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_setting".tr,
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ),
          Spacer(
            flex: 54,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgStroke1Primary,
            height: 6.v,
            width: 5.h,
            radius: BorderRadius.circular(
              2.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 11.v),
          ),
        ],
      ),
    );
  }
}
