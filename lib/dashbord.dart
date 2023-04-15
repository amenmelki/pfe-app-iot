import 'dart:ffi' as ffi;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pfe_project/constants.dart';

class DashboardIot extends StatefulWidget {
  final Size size;
  final Icon icon;
  final String title, statusOn, statusOff;

  const DashboardIot(
      {Key? key,
      required this.size,
      required this.icon,
      required this.title,
      required this.statusOn,
      required this.statusOff})
      : super(key: key);

  @override
  State<DashboardIot> createState() => _DashboardIotState();
}

class _DashboardIotState extends State<DashboardIot>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Alignment> _animation;
  bool isChecked = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );
    _animation = Tween<Alignment>(
            begin: Alignment.bottomCenter, end: Alignment.topCenter)
        .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
        reverseCurve: Curves.easeInBack,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: widget.size.width * 0.35,
      decoration: BoxDecoration(
        color: kBgColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(3, 3),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(-3, -3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.icon,
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (animation, child) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_animationController.isCompleted) {
                            _animationController.animateTo(20);
                          } else {
                            _animationController.animateTo(0);
                          }
                          isChecked = !isChecked;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade50,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 0,
                              offset: Offset(3, 3),
                            ),
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(-3, -3),
                            ),
                          ],
                        ),
                        child: Align(
                          alignment: _animation.value,
                          child: Container(
                            height: 15,
                            width: 15,
                            margin: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 1),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
