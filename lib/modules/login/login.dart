import 'package:flutter/material.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/modules/home/home.dart';

class Login extends StatefulWidget {
  static const String routeName = "/login";

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Assets.images.loginBackgroundImg.image(),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("Explore\nThe\nUniverse", style: textTheme.displayLarge,),
              ),
            ),

            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(29)
                ),

                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                  Navigator.pushReplacementNamed(context, Home.routeName);
                  setState(() {});
                },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: Text("Explore", style: textTheme.titleLarge,),
                      ),

                      Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.arrow_forward, color: AppColors.white,),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
