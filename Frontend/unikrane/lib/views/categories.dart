import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "Choose help",
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
                    "Choose from the categories below and browse local programs, or search for any service. Select one service at a time.",
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
                        height: 255,
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
                                  "Food",
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
                                            "Emergency food",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/home');
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
                                            "Help pay for food",
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
                                            "Food delivery",
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/home');
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
                                "Health",
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
                                          "Medical care",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
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
                                          "Mental health care",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
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
                                          "Dental care",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
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
                                          "Vision care",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
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
                                "Housing",
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
                                          "Temporary shelter",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
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
                                          "Maintenance & repairs",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
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
                                          "Housing advice ",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
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
