import 'package:fantasyf1/core/app_export.dart';import 'package:fantasyf1/widgets/app_bar/appbar_circleimage.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class MainscreenconligasScreen extends StatelessWidget {const MainscreenconligasScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 69.v), Column(children: [CustomAppBar(height: 33.v, leadingWidth: 59.h, leading: AppbarImage(svgPath: ImageConstant.imgMenuGray80001, margin: EdgeInsets.only(left: 35.h, top: 8.v, bottom: 8.v)), centerTitle: true, title: AppbarImage1(imagePath: ImageConstant.imgLogo), actions: [Container(margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 2.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: AppbarCircleimage(imagePath: ImageConstant.imgDownload31x33, onTap: () {onTapDownloadone(context);}))]), SizedBox(height: 10.v), Divider(color: theme.colorScheme.primary.withOpacity(1))]), SizedBox(height: 58.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v), child: Column(children: [SizedBox(height: 160.v, width: 328.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 6.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder50), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 39.v), Container(padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 4.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgImage29, height: 50.v, width: 85.h, margin: EdgeInsets.only(top: 1.v)), Padding(padding: EdgeInsets.only(top: 6.v, right: 70.h, bottom: 2.v), child: Text("lbl".tr, style: CustomTextStyles.displaySmall35))])), Padding(padding: EdgeInsets.only(left: 13.h, right: 36.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImagencochepiloto, height: 50.v, width: 106.h), CustomImageView(imagePath: ImageConstant.imgImagenpilotoganador, height: 40.v, width: 38.h, radius: BorderRadius.circular(19.h), margin: EdgeInsets.only(left: 25.h, top: 4.v, bottom: 6.v)), Padding(padding: EdgeInsets.only(left: 19.h, top: 19.v, bottom: 12.v), child: Text("lbl_puntos".tr, style: CustomTextStyles.bodyMediumFormula1Primary))]))]))), Align(alignment: Alignment.topCenter, child: Text("lbl_ultima_carrera".tr, style: theme.textTheme.headlineMedium))])), SizedBox(height: 309.v), Column(children: [Text("msg_siguiente_carrera".tr, style: theme.textTheme.headlineMedium), SizedBox(height: 9.v), Container(padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 5.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgImage31, height: 50.v, width: 66.h), Padding(padding: EdgeInsets.only(top: 6.v, right: 90.h), child: Text("lbl".tr, style: CustomTextStyles.displaySmall35))]))])]))))])))); } 
/// Navigates to the avatarScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the avatarScreen.
onTapDownloadone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.avatarScreen); } 
 }
