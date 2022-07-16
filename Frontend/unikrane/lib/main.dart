import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unikrane/views/categories.dart';
import 'package:unikrane/views/radarPage.dart';
import 'package:unikrane/views/volunteer.dart';
import 'package:unikrane/views/what.dart';
import 'package:unikrane/views/homepage.dart';

import 'controller/language_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LanguageController()),
    ],
    child: EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('hi', 'IN'),
          Locale('uk', 'UA'),
          Locale('pt', 'BR'),
          Locale('vi', 'VN'),
        ],
        path: 'assets', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (context) => MyApp());
            case '/home':
              return MaterialPageRoute(builder: (context) => HomePage());
            case '/what':
              return MaterialPageRoute(builder: (context) => What());
            case '/categories':
              return MaterialPageRoute(builder: (context) => Categories());
            case '/radar':
              return MaterialPageRoute(builder: (context) => SignSwiperPage());
            case '/volunteer':
              return MaterialPageRoute(
                  builder: (context) => VolunteerCategories());
          }
        },
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushReplacementNamed(context, '/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),

        decoration: BoxDecoration(color: Color(0xffFEE704)),
        // child: Image.asset('assets/images/logo.png'),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/unikrane_logo.png"),
              width: 280,
              height: 280,
            ),
          ],
        ),
      ),
    );
  }
}
