import 'dart:async';

import 'package:ecommerce_app/modules/home/cubit/home_cubit.dart';
import 'package:ecommerce_app/modules/save_address/save_address/save_address_screen.dart';
import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:ecommerce_app/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:ecommerce_app/widgets/buttons/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../data/values/images.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../saved_address_screen/saved_address_screen.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  late GoogleMapController mapController;
  late LocationPermission permission;
  Position? currentPosition;
  Placemark? currentPlacemark;

  @override
  void initState() {
    /// Getting location
    currentPosition = context.read<HomeCubit>().getPosition();
    getPosition();
    addCustomIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), Images.locationMarker)
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  void getPosition() async {
    currentPlacemark = await GetAddressFromLatLong(currentPosition!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Select location",
            style: Styles.tsSb20.copyWith(color: AppColors.grey900)),
      ),
      /* bottomNavigationBar:
      Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            34.5.hb,
            selectLocation(context),
            Expanded(child: 10.hb),
            CommonButton(
                    buttonText: AppStrings.confirmLocation, onPressed: () {})
                .only(left: 10, right: 10),
            Expanded(child: 10.hb)
          ],
        ),
      ),*/
      body: Stack(
        children: [
          //GoogleMaps(mapController: mapController),
          GoogleMap(
            mapType: MapType.normal,
            markers: {
              Marker(
                  markerId: const MarkerId('1'),
                  position: LatLng(
                      currentPosition!.latitude, currentPosition!.longitude),
                  visible: true,
                  draggable: true,
                  consumeTapEvents: false,
                  icon: markerIcon),
            },
            //marker.toSet(),
            initialCameraPosition: CameraPosition(
              target: LatLng(
                  currentPosition?.latitude == null
                      ? 0.0
                      : currentPosition!.latitude,
                  currentPosition?.longitude == null
                      ? 0.0
                      : currentPosition!.longitude),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  34.hb,
                  selectLocation(context),
                  25.hb,
                  CommonButton(
                      buttonText: AppStrings.confirmLocation,
                      textStyle: Styles.tsSb16.copyWith(color: AppColors.white),
                      isDisabled: false,
                      onPressed: () {
                        showBottomSheetCustomized(
                            context,
                            SaveAddress(
                              flathouse:
                              '${currentPlacemark!.locality}, ${currentPlacemark!.administrativeArea}',
                              landmark:
                            '${currentPlacemark!.street}, ${currentPlacemark!.subLocality}'
                            ));
                        //functionForConvertingAddressIntoLatLang();
                      }).only(left: 10, right: 10),
                  Expanded(child: 10.hb)
                ],
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.235,
            right: 20,
            child: GestureDetector(
              onTap: () {
                mapController.animateCamera(
                  CameraUpdate.newLatLng(
                    LatLng(
                        currentPosition!.latitude, currentPosition!.longitude),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(Images.icMapFocus),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Select Location B
  Widget selectLocation(BuildContext context) {
    return Row(
      children: [
        23.wb,
        SvgPicture.asset(
          Images.icLocationFilled,
          // height: 21,
          // width: 17,
        ),
        20.wb,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complete address...",
                    style: Styles.tsSb18.copyWith(color: AppColors.primary),
                  ),
                  // const Spacer(),
                  // SkipForNow(
                  //   onPressed: () {
                  //     Navigator.of(context).popUntil(
                  //             (route) => route.settings.name == Routes.myAddresses);
                  //   },
                  //   text: 'CHANGE',
                  // ),
                  10.wb
                ],
              ),
              6.hb,
              Text(
                '${currentPlacemark?.subLocality} ${currentPlacemark?.locality}, ${currentPlacemark?.postalCode}, ${currentPlacemark?.country}',
                style: Styles.tsR10.copyWith(color: AppColors.grey900),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Function for Converting Address Into Lat Lang.
  void functionForConvertingAddressIntoLatLang() async {
    String address = "Sector 44, "
        "Gurugram, Haryana, India";
    /* var location = await locationFromAddress(
        "Sector 45 Gurugram, Haryana, India",
        localeIdentifier: "en_IN");*/
    var locations = await locationFromAddress(address);
    print("LatLang of Enter Coordinates : ${locations}");
  }

  Future<Placemark> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    return place;
  }
}
