import 'package:flutter/material.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/modules/home/planet.dart';

import '../planet details/planet_details.dart';

class Home extends StatefulWidget {
  static const String routeName = "/home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Planet> _planets = [
    Planet(name: "Earth", image: Assets.images.earthImg),
    Planet(name: "Jupiter", image: Assets.images.jupiterImg),
    Planet(name: "Mars", image: Assets.images.marsImg),
    Planet(name: "Mercury", image: Assets.images.mercuryImg),
    Planet(name: "Neptune", image: Assets.images.neptuneImg),
    Planet(name: "Saturn", image: Assets.images.saturnImg),
    Planet(name: "Sun", image: Assets.images.sunImg),
    Planet(name: "Uranus", image: Assets.images.uranusImg),
    Planet(name: "Venus", image: Assets.images.venusImg),
  ];

  int _currentIndex = 0;

  void nextPlanet() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _planets.length;
    });
  }

  void previousPlanet() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _planets.length;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Assets.images.homeHeaderImg.image(),

                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          AppColors.black.withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 26.0),
                    child: Text("Explore", style: textTheme.headlineSmall),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Text(
                    "Which planet\nwould you like to explore?",
                    style: textTheme.headlineSmall,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.0,
                vertical: 40,
              ),
              child: _planets[_currentIndex].image.image(width: 342, height: 339),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: nextPlanet,
                    child: Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: Icon(Icons.arrow_back, color: AppColors.white),
                    ),
                  ),

                  Text(_planets[_currentIndex].name, style: textTheme.headlineSmall),

                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: previousPlanet,
                    child: Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: Icon(Icons.arrow_forward, color: AppColors.white),
                    ),
                  )
                ],
              ),
            ),

            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(29)
                ),

                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    Navigator.pushNamed(context, PlanetDetails.routeName, arguments: _planets[_currentIndex]);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: Text("Explore ${_planets[_currentIndex].name}", style: textTheme.titleLarge,),
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
