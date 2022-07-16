import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SignSwiperPage extends StatefulWidget {
  @override
  _SignSwiperPageState createState() => _SignSwiperPageState();
}

class _SignSwiperPageState extends State<SignSwiperPage>
    with SingleTickerProviderStateMixin {
  //Animation controller
  late AnimationController _animationController;
  final Uri _url = Uri.parse(
      'https://unikrane-demo.vercel.app/join/75ac53f8-c3ff-4081-a1bf-121a6bcbd892');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  void initState() {
    super.initState();

    //create
    _animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    //Add to the event queue
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/call');
      // _launchUrl();
    });
  }

  @override
  void dispose() {
    //destroy
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEE704),
      //Center
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Center(
            child: Image(
                image: AssetImage("assets/radarLoader.gif"),
                width: 280,
                height: 280),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  RotationTransition buildRotationTransition() {
    //Rotation animation
    return RotationTransition(
      //Animation controller
      turns: _animationController,
      //Circular crop
      child: ClipOval(
        //Scan the gradient
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            //Scan the gradient
            gradient: SweepGradient(colors: [
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.6),
            ]),
          ),
        ),
      ),
    );
  }
}
