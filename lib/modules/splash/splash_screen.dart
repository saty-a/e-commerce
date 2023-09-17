/*
import 'package:ecommerce_app/routes/app_routes.dart';
import 'package:ecommerce_app/styles/text_styles.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../onboarding/splash/cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.loginWithOtpScreen, (route) => false);
        },
        child: Column(
          children: [
            const Center(
              child: Text(
                "News App",
                style: Styles.tsB32,
              ),
            ),
            CustomTextField(
                controller: controller,
                hintText: "Hi ",
                labelText: "Enter Text ")
          ],
        ),
      ),
    );
  }
}
*/
