import 'package:flutter/material.dart';
import 'package:our_app/screens/registration/auth_tabs/log_in_tab.dart';
import 'package:our_app/screens/registration/auth_tabs/sign_up_tab.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
     surfaceTintColor: Colors.white,
        color: AppColors.primaryWhite,
        padding: EdgeInsets.zero,
        child: Container(
          width: MediaQuery.sizeOf(context).width*1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(

                  colors: [
                AppColors.mainColor,
                AppColors.mainLight,
              ]
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:  Radius.circular(25))
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
      children: [
        Container(
          height:  MediaQuery.sizeOf(context).height*0.25,
          width: MediaQuery.sizeOf(context).width*1,
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              AppColors.mainColor,
              AppColors.mainLight,
            ]

            ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight:  Radius.circular(25))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back,color: AppColors.primaryWhite,),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(child:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                         _currentIndex=0;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),
                          ),
                          const SizedBox(height: 5,),
                          Container(color: _currentIndex==0?AppColors.primaryWhite:Colors.transparent,height: 2,width: MediaQuery.sizeOf(context).width*0.17,)

                        ],
                      ),
                    ),

                   GestureDetector(
                     onTap: (){
                       setState(() {
                        _currentIndex=1;
                       });
                     },
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           'Sign In',
                           style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),
                         ),
                         const SizedBox(height: 5,),
                         Container(color: _currentIndex==1?AppColors.primaryWhite:Colors.transparent,height: 2,width: MediaQuery.sizeOf(context).width*0.17,)

                       ],
                     ),
                   ),
                  ],
                ),),
              ),

            ],
          ),
        ),
        _currentIndex==0?const SignUpTab():const LogInTab()


      ],
    ),);
  }
}
