import 'package:flutter/material.dart';

class HomeLayoutMobile extends StatelessWidget {
  const HomeLayoutMobile({super.key, required this.body, this.back});

  final Widget body;
  final Function? back;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Scaffold(backgroundColor: Colors.transparent, body: body),
      ),
    );
  }
}
