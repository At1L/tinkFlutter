import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/screen/main_screen/app_main_screen.dart';
import 'package:tink_flutter_proj/values/app_colors.dart';
import 'package:tink_flutter_proj/values/app_images.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Container(
            color: AppColors.dark,
            child: Column(
              children: [
                const SizedBox(
                  height: 152,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Welcome to\n',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const TextSpan(
                          text: 'Tink Offer:\n',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const TextSpan(
                          text: 'Business Assistant!\n',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const TextSpan(
                          text: '\n',
                        ),
                        TextSpan(
                          text: 'Handle your business\n',
                          style: TextStyle(
                            color: AppColors.white.withOpacity(0.2),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'tasks in one place\n',
                          style: TextStyle(
                            color: AppColors.white.withOpacity(0.2),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      AppImages.onBoardingPage1Img1,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 104,
                      left: 0,
                      right: 0,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 5,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.5),
                                  shape: BoxShape.circle),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 100,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          _pageController.jumpToPage(1);
                        },
                        child: Center(
                          child: Container(
                            width: 150,
                            height: 55,
                            decoration: BoxDecoration(
                                color: AppColors.yellow,
                                borderRadius: BorderRadius.circular(100)),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: AppColors.dark,
            child: Column(
              children: [
                const SizedBox(
                  height: 132,
                ),
                Center(
                  child: Container(
                    width: 301,
                    height: 195,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.grey,
                        border: Border.all(
                          color: AppColors.yellow,
                        )),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Salaries',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Tenders',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Meetings',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Secure Data',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Loans',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Debts',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Events',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.yellow,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Leases',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Stack(
                  children: [
                    Image.asset(
                      AppImages.onBoardingPage2Img1,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 104,
                      left: 0,
                      right: 0,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.5),
                                  shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 25,
                              height: 5,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                           MaterialPageRoute(builder: (context) => const AppMainScreen()),
                           );
                        },
                        child: Center(
                          child: Container(
                            width: 125,
                            height: 55,
                            decoration: BoxDecoration(
                                color: AppColors.yellow,
                                borderRadius: BorderRadius.circular(100)),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              'Start',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
