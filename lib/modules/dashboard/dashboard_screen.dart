import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import '../../data/values/images.dart';
import '../../styles/app_colors.dart';
import '../../widgets/bottom_sheet/bottom_sheet.dart';
import '../account/account_screen.dart';
import '../cart/cart_screen.dart';
import '../home/cubit/home_cubit.dart';
import '../home/home_screen.dart';
import '../notification/notification_screen.dart';
import '../save_address/location_permission/location_permission.dart';
import 'cubit/dashboard_cubit.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late LocationPermission permission;
  final List<Widget> wList = [
    const HomeScreen(),
    const NotificationScreen(),
    const CartScreen(),
    const AccountScreen()
  ];

  @override
  void initState() {
    determinePosition().then((value) async {
      value == LocationPermission.deniedForever ||
              value == LocationPermission.denied
          ? await showBottomSheetCustomized(
              context, const LocationPermissions())
          : null;
    });

    super.initState();
  }

  Future<void> getpostion()async {
    Position currentPosition= await determinePosition();
    context.read<HomeCubit>().setPosition(currentPosition);
    GetAddressFromLatLong(currentPosition);
  }


  @override
  Widget build(BuildContext context) {
    getpostion();
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          body: wList[state.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            elevation: 4,
            backgroundColor: Colors.white,
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<DashboardCubit>().onTabChange(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Images.icHome,
                ),
                label: "Home",
                activeIcon: SvgPicture.asset(
                  Images.icHome,
                  color: AppColors.primary,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Images.icNotification,
                ),
                label: "Notification",
                activeIcon: SvgPicture.asset(
                  Images.icNotification,
                  color: AppColors.primary,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Images.icCart,
                ),
                label: "Cart",
                activeIcon: SvgPicture.asset(
                  Images.icCart,
                  color: AppColors.primary,
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Images.icAccount,
                ),
                label: "Account",
                activeIcon: SvgPicture.asset(
                  Images.icAccount,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> determinePosition() async {
    bool serviceEnabled;
    /* late LocationPermission permission;*/
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      print("Permission ${permission}");
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return permission;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return permission;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position)async {
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    context.read<HomeCubit>().onLocationAccess(place.locality as String);
  }

}
