import 'package:flutter/material.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
      children: [
        Container(

          height:  MediaQuery.sizeOf(context).height*0.25,
          width: MediaQuery.sizeOf(context).width*1,
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.mainColor,
              AppColors.mainLight,
            ]

            ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:  Radius.circular(20))
          ),
          child: Column(
            children: [
              Icon(Icons.arrow_back,color: AppColors.primaryWhite,),
              Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text(
                   'Sign Up',
                   style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryWhite),
                 ),
                 Text(
                   'Sign In',
                   style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryWhite),
                 ),
                ],
              ),)
            ],
          ),
        )


      ],
    ),);
  }
}
