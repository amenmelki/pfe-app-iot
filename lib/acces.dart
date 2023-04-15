import 'package:flutter/material.dart';
import 'package:pfe_project/constants.dart';
import 'package:pfe_project/dashbord.dart';

class AccesPage extends StatefulWidget {
  const AccesPage({super.key});

  @override
  State<AccesPage> createState() => _AccesPageState();
}

class _AccesPageState extends State<AccesPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: kDarkGreyColor,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    color: Color.fromARGB(221, 195, 42, 42),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: size.height * 0.045,
                  width: size.width * 0.095,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(31, 240, 239, 239),
                        blurRadius: 8,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: kDarkGreyColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              children: [
                DashboardIot(
                  size: size,
                  icon: Icon(Icons.home_outlined,
                      size: 55, color: Colors.grey.shade400),
                  title: 'ENTREY',
                  statusOn: 'OPEN',
                  statusOff: 'LOCKED',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
