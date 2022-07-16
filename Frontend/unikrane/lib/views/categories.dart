import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unikrane/views/languages.dart';
import 'package:unikrane/widgets/customDialog.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEE704),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                        image: AssetImage('assets/toplogo.png'),
                        width: 150,
                        height: 150),
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
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    'categories_title'.tr(),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text(
                    'categories_desc'.tr(),
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
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 205,
                        width: 350,
                        color: Color(0xfffff27d),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'categories_title_1'.tr(),
                                  // textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 0, 20),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      child: ElevatedButton(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 10),
                                          child: Text(
                                            'categories_btn1'.tr(),
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/radar');
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            elevation: 4),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: ElevatedButton(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 10, 20, 10),
                                          child: Text(
                                            'categories_btn2'.tr(),
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/radar');
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            elevation: 4),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 325,
                        width: 350,
                        color: Color(0xffd6ffa1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'categories_title_2'.tr(),
                                // textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 20),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 300,
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'categories2_btn1'.tr(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/radar');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 4),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'categories2_btn2'.tr(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/radar');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 4),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'categories2_btn3'.tr(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/radar');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 4),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'categories2_btn4'.tr(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/radar');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 4),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 300,
                        width: 350,
                        color: Color(0xffbcffe2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'categories_title_3'.tr(),
                                // textAlign: TextAlign.start,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 0, 20),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 300,
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'categories3_btn1'.tr(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/radar');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 4),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'categories3_btn2'.tr(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/radar');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 4),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 300,
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Text(
                                          'categories3_btn3'.tr(),
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/radar');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white, elevation: 4),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
