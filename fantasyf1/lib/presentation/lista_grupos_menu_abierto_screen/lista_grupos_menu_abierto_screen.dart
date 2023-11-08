import 'package:fantasyf1/core/app_export.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;class ListaGruposMenuAbiertoScreen extends StatelessWidget {const ListaGruposMenuAbiertoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 64.h, leading: AppbarImage(svgPath: ImageConstant.imgMenu, margin: EdgeInsets.only(left: 31.h, top: 11.v, bottom: 12.v)), centerTitle: true, title: AppbarImage1(imagePath: ImageConstant.imgLogo)), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [Divider(color: theme.colorScheme.primary.withOpacity(1)), SizedBox(height: 16.v), Text("lbl_grupos".tr, style: theme.textTheme.displayMedium), SizedBox(height: 10.v), GestureDetector(onTap: () {onTapUserlistitem(context);}, child: Container(height: 71.v, width: 328.h, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v), decoration: AppDecoration.fillWhiteA, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.only(left: 20.h, right: 14.h), padding: EdgeInsets.symmetric(horizontal: 126.h, vertical: 19.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgVector1), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("lbl".tr, style: theme.textTheme.titleLarge)]))), CustomImageView(imagePath: ImageConstant.imgDownload51x55, height: 51.v, width: 55.h, radius: BorderRadius.circular(25.h), alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 6.v))]))), SizedBox(height: 375.v), Container(height: 52.v, width: 255.h, decoration: AppDecoration.outlinePrimary3, child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.centerLeft, child: Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v), decoration: AppDecoration.fillRed.copyWith(borderRadius: BorderRadiusStyle.roundedBorder28), child: Text("lbl_crear".tr, style: CustomTextStyles.titleMediumFormula1WhiteA70001))), Align(alignment: Alignment.centerRight, child: Container(margin: EdgeInsets.only(left: 103.h), padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 6.v), decoration: AppDecoration.fillRed.copyWith(borderRadius: BorderRadiusStyle.roundedBorder28), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 40.v, child: VerticalDivider(width: 3.h, thickness: 3.v, color: appTheme.whiteA700, endIndent: 1.h)), Padding(padding: EdgeInsets.only(left: 50.h, top: 9.v, bottom: 10.v), child: Text("lbl_a_adir".tr, style: CustomTextStyles.titleMediumFormula1WhiteA70001))])))])), SizedBox(height: 11.v), CustomImageView(svgPath: ImageConstant.imgBoton, height: 57.v, width: 65.h, onTap: () {onTapImgBotonone(context);})])))))); } 
/// Navigates to the grupoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the grupoScreen.
onTapUserlistitem(BuildContext context) { Navigator.pushNamed(context, AppRoutes.grupoScreen); } 
/// Navigates to the listaGruposScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the listaGruposScreen.
onTapImgBotonone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.listaGruposScreen); } 
 }
