import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tink_flutter_proj/screen/main_screen/event_screen/events_screen.dart';
import 'package:tink_flutter_proj/screen/main_screen/payments_page.dart';
import 'package:tink_flutter_proj/values/app_colors.dart';
import 'package:tink_flutter_proj/values/app_icons.dart';
import 'package:tink_flutter_proj/values/app_images.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreen();
}

class _AppMainScreen extends State<AppMainScreen> {
  int _curScreen = 1;

  final _icons = [
    AppIcons.wallet,
    AppIcons.star,
    AppIcons.calendar,
    AppIcons.finantialSum,
    AppIcons.finantialCalc,
    AppIcons.privateData
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.dark,
        elevation: 0,
        toolbarHeight: 80,
        surfaceTintColor: Colors.transparent,
        title: Row(
          children: [
            const SizedBox(width: 15),
            Image.asset(
              AppImages.avatar,
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 10),
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
            const SizedBox(width: 15),
          ],
        ),
      ),
      backgroundColor: AppColors.dark,
      body: IndexedStack(
        index: _curScreen,
        children: const [
          PaymentsPage(),
          EventsScreen(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _curScreen,
          onTap: (value) {
            setState(() {
              _curScreen = value;
            });
          },
          items: List.generate(
            6,
            (index) => BottomNavigationBarItem(
              label: '',
              icon: SvgPicture.asset(
                _icons[index],
                color: _curScreen == index
                    ? AppColors.yellow
                    : AppColors.lightGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
