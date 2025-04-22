import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/values/app_colors.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPage();
}

class _PaymentsPage extends State<PaymentsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.dark,
    );
  }
}