import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:unikrane/views/languages.dart';
import 'package:unikrane/views/news.dart';
import 'package:unikrane/widgets/customDialog.dart';
import 'package:unikrane/widgets/translationButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEE704),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                      image: AssetImage('assets/toplogo.png'),
                      width: 200,
                      height: 200),
                  ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage('assets/translategoogle.png'),
                              width: 20,
                              height: 20),
                          SizedBox(width: 10),
                          Text(
                            'translate_btn'.tr(),
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Languages(),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, elevation: 4),
                  ),
                ],
              ),

              Text(
                'home_description'.tr(),
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(85, 10, 85, 10),
                  child: Text(
                    'home_btn_text'.tr(),
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CustomDialog(
                        title: 'alert_title'.tr(),
                        content: 'alert_note'.tr(),
                        positiveBtnText: 'alert_next'.tr(),
                        negativeBtnText: 'alert_cancel'.tr(),
                        positiveBtnPressed: () {
                          // Do something here
                          Navigator.pushNamed(context, '/what');
                          // Navigator.of(context).pop();
                        },
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, elevation: 4),
              ),
              SizedBox(
                height: 20,
              ),

              // Image.asset("assets/peopleuk.png")
            ],
          ),
        ),
      ),
    );
  }
}
