import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_5/feature/auth/login/screen/login_screen.dart';

void main() {
  runApp(
    Sizer(
      builder: (
        context,
        orientation,
        deviceType,
      ) {
        return const AntoniosAzerApp();
      },
    ),
  );
}

class AntoniosAzerApp
    extends StatelessWidget {
  const AntoniosAzerApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false,
      home: LoginScreen(),
    );
  }
}
