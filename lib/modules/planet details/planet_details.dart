import 'package:flutter/material.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/theme/app_colors.dart';

import '../home/planet.dart';

class PlanetDetails extends StatelessWidget {
  static const String routeName = "/planetDetails";

  const PlanetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)!.settings.arguments as Planet;

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 130,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Assets.images.homeHeaderImg.image(fit: BoxFit.cover),
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              AppColors.black.withValues(alpha: 0.8)
                            ]
                          )
                        ),
                      ),
                    ),
          
                    Positioned(
                      left: 16,
                      top: 22,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
          
                        child: Container(
                          width: 43,
                          height: 43,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primary,
                          ),
          
                          child: Icon(Icons.arrow_back, color: AppColors.white,),
                        ),
                      ),
                    ),
                    
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 22.0),
                        child: Text(planet.name, style: textTheme.headlineSmall,),
                      ),
                    ),
          
                    Positioned(
                      bottom: 0,
                      left: 18,
                      child: Text(planet.name, style: textTheme.headlineSmall,),
                    ),
                  ],
                ),
              ),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                child: planet.image.image(),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 18,
                  children: [
                    Text("About", style: textTheme.headlineSmall,),

                    Text("Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.", style: textTheme.titleMedium,),

                    Text("Distance from Sun (km) : 149598026", style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700
                    ),),

                    Text("Length of Day (hours) : 23.93", style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700
                    ),),

                    Text("Orbital Period (Earth years) : 1", style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700
                    ),),

                    Text("Radius (km) : 6371", style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700
                    ),),

                    Text("Mass (kg) : 5.972 × 10²⁴", style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700
                    ),),

                    Text("Gravity (m/s²) : 9.81", style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700
                    ),),

                    Text("Surface Area (km²) : 5.10 × 10⁸", style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700
                    ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
