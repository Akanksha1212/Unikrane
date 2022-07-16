import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:unikrane/widgets/translationButton.dart';

import '../controller/language_controller.dart';

class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LanguageController controller = context.read<LanguageController>();

    return Scaffold(
      backgroundColor: Color(0xffFEE704),
      body: Column(
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
          Container(
            padding: EdgeInsets.all(24),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose your language',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'languages_btn_english'.tr(),
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        onPressed: () {
                          context.locale = Locale('en', 'US');
                          controller.onLanguageChanged();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 4),
                      ),
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'languages_btn_ukrainian'.tr(),
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        onPressed: () {
                          context.locale = Locale('uk', 'UA');
                          controller.onLanguageChanged();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 4),
                      ),
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'languages_btn_portuguese'.tr(),
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        onPressed: () {
                          context.locale = Locale('pt', 'BR');
                          controller.onLanguageChanged();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 4),
                      ),
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'languages_btn_hindi'.tr(),
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        onPressed: () {
                          context.locale = Locale('hi', 'IN');
                          controller.onLanguageChanged();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 4),
                      ),
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            'languages_btn_vietnamese'.tr(),
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        onPressed: () {
                          context.locale = Locale('vi', 'VN');
                          controller.onLanguageChanged();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white, elevation: 4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
