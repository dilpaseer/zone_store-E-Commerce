import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zone_store/features/authentication/controllers/onboarding/on_boarding_controller.dart';
import 'package:zone_store/utils/constants/colors.dart';
import 'package:zone_store/utils/constants/sizes.dart';
import 'package:zone_store/utils/device/device_utility.dart';
import 'package:zone_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaltSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          controller.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
