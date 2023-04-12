import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Welcome to Home Page',
              body: 'ici une text ...',
              image: SvgPicture.asset(
                'assets/1.svg',
              ),
            ),
            PageViewModel(
              title: 'Welcome to Dashbord',
              body: 'ici une text ...',
              image: SvgPicture.asset('assets/2.svg'),
            ),
            PageViewModel(
              title: 'Welcome to Dashbord',
              body: 'ici une text ...',
              image: SvgPicture.asset('assets/3.svg'),
            ),
            PageViewModel(
              title: 'Welcome to Dashbord',
              body: 'ici une text ...',
              image: SvgPicture.asset('assets/4.svg'),
            ),
          ],
          showSkipButton: true,
          skip: const Icon(Icons.skip_next),
          next: const Icon(Icons.next_plan),
          done:
              const Text("Done", style: TextStyle(fontWeight: FontWeight.w700)),
          onDone: () {
            Navigator.pushNamed(context, 'login');
            // On Done button pressed
          },
          onSkip: () {
            // On Skip button pressed
          },
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Theme.of(context).colorScheme.secondary,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
