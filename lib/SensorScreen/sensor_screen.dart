import 'package:flutter/material.dart';
import 'package:pfe_project/constants.dart';
import 'package:pfe_project/SensorScreen/components/body.dart';

class SensorScreen extends StatelessWidget {
  const SensorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: SensorScreenBody(),
    );
  }
}
