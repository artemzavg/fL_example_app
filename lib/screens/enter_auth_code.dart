import 'package:fl_example/widgets/enter_auth_code.dart';
import 'package:flutter/material.dart';

class EnterAuthCode extends StatelessWidget {
  const EnterAuthCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EnterAuthCodeForm()
    );
  }
  
}