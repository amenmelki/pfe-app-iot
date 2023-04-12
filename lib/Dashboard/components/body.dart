import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe_project/constants.dart';
import 'package:pfe_project/SensorScreen/sensor_screen.dart';

import 'package:pfe_project/AccountPage.dart';
import 'package:pfe_project/login.dart';

class Dashboardbody extends StatefulWidget {
  const Dashboardbody({super.key});

  get size => null;

  @override
  State<Dashboardbody> createState() => _DashboardbodyState();
}

class _DashboardbodyState extends State<Dashboardbody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: size.height * 0.1),
            Center(
              child: Text(
                "SECURITY IS MORE IMPORTANT THAN EVER",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: Text(
                "Press all that applies . This will help you control the condition of your room .",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkGreyColor,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyLogin(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/3234055.png', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'Acces\n',
                ),
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/pir_11.png', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'MOTION\n Detector',
                ),
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/5115664.png', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'HUMIDITY\n',
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/temp1.png', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'Temperature\n',
                ),
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/hum11.jpg', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'HUMIDITY\n',
                ),
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/hum11.jpg', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'HUMIDITY\n',
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/flamme11.png', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'FIRE\n',
                ),
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/hum11.jpg', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'HUMIDITY\n',
                ),
                ControlButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountPage(),
                      ),
                    );
                  },

                  icon:
                      'assets/image/hum11.jpg', /////////////////////////////erreur ici !!!!!!!!!!!!
                  title: 'HUMIDITY\n',
                ),
              ],
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }

  Widget ControlButton({
    bool isSelected = false,
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.grey,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 80,
              width: 80,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
