import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdf_app/screens/signup_screen.dart';
import 'package:pdf_app/utils/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
        return const SignUpScreen();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: Center(
        child: Icon(FontAwesomeIcons.youtube,size: 90,color: AppColor.redColor,),
      ),
    ),);
  }
}
