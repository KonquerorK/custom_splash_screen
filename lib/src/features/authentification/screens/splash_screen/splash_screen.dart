import 'package:custom_splash_screen/src/constants/colors.dart';
import 'package:custom_splash_screen/src/constants/image_string.dart';
import 'package:custom_splash_screen/src/constants/sizes.dart';
import 'package:custom_splash_screen/src/constants/text_strings.dart';
import 'package:custom_splash_screen/src/features/authentification/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                duration: const Duration(milliseconds: 1600),
                child: const Image(
                  image: AssetImage(kSplashTopIcon),
                  color: Colors.amber,
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                top: 80,
                left: splashController.animate.value ? kDefaultSize : -80,
                duration: const Duration(milliseconds: 1600),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kAppName,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        kAppTagLine,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 200 : 0,
                left: 50,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: const Image(
                    image: AssetImage(kSplashImage),
                    height: 300,
                    width: 300,
                    // color: Colors.amber,
                  ),
                )),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 60 : 0,
              right: kDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2400),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: kSplashContainerSize,
                  height: kSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kPrimaryColor,
                  ),
                ),
                // child: const Image(
                //   image: AssetImage(kSplashTopIcon),
                //   color: Colors.amber,
                // )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
