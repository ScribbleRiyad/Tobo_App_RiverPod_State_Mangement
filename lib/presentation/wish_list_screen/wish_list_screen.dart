import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:todo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_elevated_button.dart';
import 'package:todo_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WishListScreen extends StatelessWidget {
  WishListScreen({Key? key}) : super(key: key);

  TextEditingController taskFieldController = TextEditingController();

  TextEditingController filesizeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.h, vertical: 59.v),
                    child: Column(children: [
                      _buildPageHeader(context),
                      SizedBox(height: 85.v),
                      _buildTaskTodo(context),
                      SizedBox(height: 18.v),
                      _buildDate(context),
                      SizedBox(height: 18.v),
                      _buildAttachments(context),
                      SizedBox(height: 50.v),
                      CustomElevatedButton(
                          text: "msg_make_a_wish_list".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700,
                          onPressed: () {
                            onTapMakeAWishList(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
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

  /// Section Widget
  Widget _buildPageHeader(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_make_a_wish_list".tr, style: theme.textTheme.headlineMedium),
      SizedBox(height: 11.v),
      Text("msg_make_your_job_easier".tr, style: theme.textTheme.labelLarge)
    ]);
  }

  /// Section Widget
  Widget _buildTaskTodo(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_task_todo".tr, style: CustomTextStyles.labelLargeOnPrimary_1),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: taskFieldController,
          hintText: "msg_create_action_mobile".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary,
          textInputType: TextInputType.phone,
          prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCalendarOnprimarycontainer,
                  height: 23.v,
                  width: 24.h)),
          prefixConstraints: BoxConstraints(maxHeight: 58.v),
          contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL14)
    ]);
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_date".tr, style: CustomTextStyles.labelLargeOnPrimary_1),
      SizedBox(height: 12.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v),
          decoration: AppDecoration.outlineOnPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgCalendar,
                height: 23.v,
                width: 24.h),
            Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text("lbl_tt_mm_yy".tr,
                    style: CustomTextStyles.titleSmallOnPrimary))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildAttachments(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_attachments".tr, style: CustomTextStyles.labelLargeOnPrimary_1),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: filesizeController,
          hintText: "lbl_maximum_10_mb".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary,
          textInputAction: TextInputAction.done,
          prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 18.h, vertical: 17.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgInfo, height: 23.v, width: 24.h)),
          prefixConstraints: BoxConstraints(maxHeight: 58.v),
          contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL14)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapMakeAWishList(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
