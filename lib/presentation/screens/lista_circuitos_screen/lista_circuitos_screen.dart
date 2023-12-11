import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/presentation/screens/circuito_bahr_in_screen/circuito_bahr_in_screen.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:get/get_navigation/get_navigation.dart';

import '../../../api/configuracionApi.dart';
import '../../../api/modelo/RaceScheduleModel.dart';

class ListaCircuitosScreen extends StatefulWidget {
  const ListaCircuitosScreen({Key? key}) : super(key: key);

  @override
  _ListaCircuitosScreen createState() => _ListaCircuitosScreen();
}

class _ListaCircuitosScreen extends State<ListaCircuitosScreen> {
  RaceScheduleModel? circuitos = null;
  List<Circuit>? circuit = null;

  Client cliente = Client();

  Future<RaceScheduleModel?> initializeCarGlobal() async {
    Client cliente = Client();
    var gl = await cliente.getRaces("2023", queryParams: "limit=22");
    print(gl);
    setState(() {
      circuitos = gl;
      circuit = circuitos!.mrData.circuitTable.circuits;
    });
    return null;
  }

  @override
  void initState() {
    initializeCarGlobal();
    //print(circuitos);
    print(circuit);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 64.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        EdgeInsets.only(left: 31.h, top: 11.v, bottom: 12.v)),
                centerTitle: true,
                title: AppbarImage1(imagePath: ImageConstant.imgLogo)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Divider(),
                          SizedBox(height: 9.v),
                          Text("lbl_circuitos".tr,
                              style: theme.textTheme.displayMedium),
                          if (circuit != null)
                            for (var i in circuit!)
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      width: 380.h,
                                      margin:
                                          EdgeInsets.only(top: 5.v, right: 0.h),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Container(
                                                height: 75.v,
                                                margin: EdgeInsets.only(
                                                    bottom: 5.v),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 5.v),
                                                decoration:
                                                    AppDecoration.fillWhiteA,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    fit: StackFit.loose,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector1,
                                                          height: 180.h,
                                                          width: 273.h,
                                                          alignment:
                                                              Alignment.center,
                                                          onTap: () {
                                                            onTapCircuits(
                                                                context, i);
                                                          }),
                                                      Align(
                                                          alignment: Alignment
                                                              .topLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          15.h,
                                                                      top: 8.v),
                                                              child: Row(
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage32,
                                                                        height: 50
                                                                            .v,
                                                                        width: 97
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            top: 10
                                                                                .v),
                                                                        onTap:
                                                                            () {
                                                                          onTapCircuits(
                                                                              context,
                                                                              i);
                                                                        }),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 16
                                                                                .h),
                                                                        child:
                                                                            Text(
                                                                          circuitos == null
                                                                              ? ""
                                                                              : i.circuitName,
                                                                          style: theme
                                                                              .textTheme
                                                                              .displaySmall,
                                                                        ))
                                                                  ])))
                                                    ]))
                                          ])))
                        ]))))));
  }

  /// Navigates to the circuitoUrbanoDeMiamiScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoUrbanoDeMiamiScreen.
  onTapStackmiami(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoUrbanoDeMiamiScreen);
  }

  /// Navigates to the circuitoDeAlbertParkScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoDeAlbertParkScreen.
  onTapStackvectorone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoDeAlbertParkScreen);
  }

  onTapCircuits(BuildContext context, Circuit circuit) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CircuitoBahrInScreen(circuit: circuit)));
  }

  /// Navigates to the circuitoBahrInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoBahrInScreen.
  onTapStackbahrin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoBahrInScreen);
  }
}
