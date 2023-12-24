import 'package:flutter/material.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';

class LogInTab extends StatefulWidget {
  const LogInTab({super.key});

  @override
  State<LogInTab> createState() => _LogInTabState();
}

class _LogInTabState extends State<LogInTab> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Welcome Back!',
              style: AppTextStyles.boldStyle.copyWith(color: AppColors.primaryBlack),
            ),
          ),
          SizedBox(height: 20,),

          Container(
            height: 52,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryBlack.withOpacity(0.10),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: TextField(

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail, color:AppColors.iconColor),
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xf7000000)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 52,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryBlack.withOpacity(0.10),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: AppColors.iconColor),
                suffixIcon: Icon(Icons.visibility_off, color: AppColors.iconColor),
                hintText: 'Password',
                hintStyle: TextStyle(color: Color(0xf7000000)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: AppColors.mainLight,
                value: _isChecked,
                onChanged: (v) {
                  setState(() {
                    _isChecked = v!;
                  });
                },
              ),
              Text(
                'Remember Password',
                style: AppTextStyles.regularStyle.copyWith(color: AppColors.mainLight),
              ),
              Spacer(),
              Text(
                'Forget Password',
                style: AppTextStyles.regularStyle.copyWith(color: Color(0xffCA8E8E)),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width*0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width*0.85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.mainLight
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Divider(thickness: 2,height: 2,color: AppColors.iconColor,)),
                      SizedBox(width: 10,),
                      Text(
                        'Or sign In with',
                        style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.iconColor),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Divider(thickness: 2,height: 2,color: AppColors.iconColor,)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,width: MediaQuery.sizeOf(context).width*0.41,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.primaryWhite,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primaryBlack.withOpacity(0.10),
                                offset: Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ]

                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  height: 25,width: 25,
                                  image: AssetImage("assets/icons/sign_up/google.png")),
                              SizedBox(width: 20,),
                              Text(
                                'Google',
                                style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.iconColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 45,width: MediaQuery.sizeOf(context).width*0.41,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.mainColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primaryBlack.withOpacity(0.10),
                                offset: Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ]

                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  height: 25,width: 25,
                                  image: AssetImage("assets/icons/sign_up/Vector.png")),
                              SizedBox(width: 10,),
                              Text(
                                'Facebook',
                                style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
