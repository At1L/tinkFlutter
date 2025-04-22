import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/values/app_colors.dart';
import 'package:tink_flutter_proj/values/app_images.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                AppImages.avatar,
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Vladimir Luzhnik',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: AppColors.white,
              ),
              const Spacer(),
              const Icon(
                Icons.menu,
                color: AppColors.white,
                size: 40,
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          );
  }
}