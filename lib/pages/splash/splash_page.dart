
import 'package:flutter/material.dart';
import 'package:linkdin_app/theme/styles.dart';

class SplashPage extends StatefulWidget {
  final Widget child;
  const SplashPage({super.key, required this.child});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000)).then((value) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => widget.child),
            (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linkedInWhiteFFFFFF,
      body: Center(
        child: Image.asset("assets/app_logo.png"),
      ),
    );
  }
}
