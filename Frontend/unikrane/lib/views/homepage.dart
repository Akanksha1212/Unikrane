import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unikrane/widgets/customDialog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                    width: 200,
                    height: 200),
              ],
            ),
            Text(
              "Get support or support others",
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
                  "Start now",
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
                      title: "Tell us a little about yourself",
                      content:
                          "Note : By entering your info you’re allowing us to use your name & public IP for enhanced search & accessilbity.",
                      positiveBtnText: "Next",
                      negativeBtnText: "Cancel",
                      positiveBtnPressed: () {
                        // Do something here
                        Navigator.pushNamed(context, '/what');
                        // Navigator.of(context).pop();
                      },
                    );
                  },
                );
              },
              style:
                  ElevatedButton.styleFrom(primary: Colors.white, elevation: 4),
            ),
          ],
        ),
      ),
    );
  }
}
