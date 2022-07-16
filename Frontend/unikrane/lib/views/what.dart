import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unikrane/views/languages.dart';
import 'package:unikrane/widgets/customDialog.dart';

class What extends StatefulWidget {
  const What({Key? key}) : super(key: key);

  @override
  State<What> createState() => _WhatState();
}

class _WhatState extends State<What> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEE704),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                    image: AssetImage('assets/toplogo.png'),
                    width: 150,
                    height: 150),
                IconButton(
                  iconSize: 20,
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 15),
              child: Text(
                'what_heading'.tr(),
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Text(
                'what_desc'.tr(),
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(85, 15, 85, 15),
                child: Text(
                  'what_gethelp'.tr(),
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/categories');
              },
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 30,
              endIndent: 30,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(28, 15, 28, 15),
                child: Text(
                  'what_volunteer'.tr(),
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/volunteer');
              },
            ),
          ],
        ),
      ),
    );
  }
}
