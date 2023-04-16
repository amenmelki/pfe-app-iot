import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:pfe_project/constants.dart';
import 'package:pfe_project/dashbord.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AccesPage extends StatefulWidget {
  const AccesPage({super.key});

  @override
  State<AccesPage> createState() => _AccesPageState();
}

class _AccesPageState extends State<AccesPage>
    with SingleTickerProviderStateMixin {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/image/background.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "RFID SENSOR\n ACCESS PAGE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ui.Color.fromARGB(255, 8, 30, 48),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                "Access Control with RFID Technology ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ui.Color.fromARGB(255, 8, 30, 48),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 5),
                    CircularPercentIndicator(
                      radius: 100,
                      lineWidth: 15,
                      percent: 1.0,
                      progressColor: isChecked ? Colors.green : Colors.red,
                      center: isChecked
                          ? Image.asset(
                              'assets/image/open.png',
                              height: 200,
                              width: 160,
                            )
                          : Image.asset(
                              'assets/image/close.png',
                              height: 200,
                              width: 160,
                            ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Text(
                        isChecked ? 'OPEN' : 'LOCKED',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isChecked ? Colors.green : Colors.red,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _roundedButton({
    required String title,
    bool isActive = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo : Colors.transparent,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.indigo),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
