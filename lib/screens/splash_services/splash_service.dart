import 'dart:async';
import 'package:flutter/material.dart';
import 'package:our_app/screens/choose_account/choose_account_screen.dart';




class SplashServicesScreen extends StatefulWidget {
  const SplashServicesScreen({super.key});

  @override
  _SplashServicesScreenState createState() => _SplashServicesScreenState();
}
class _SplashServicesScreenState extends State<SplashServicesScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
              const ChooseAccountScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:const SizedBox(child: Image(fit: BoxFit.cover, image: AssetImage("assets/images/splash_screen/splashscreen.png")))
    );
  }
}

