import 'package:flutter/material.dart';
import 'package:our_app/screens/bottom_nav_bar/bottom_navigation_app_bar.dart';
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
          const SizedBox(height: 20,),

          Container(
            height: 52,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryBlack.withOpacity(0.10),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: TextField(

              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail, color:AppColors.iconColor),
                hintText: 'Email',
                hintStyle: const TextStyle(color: Color(0xf7000000)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 52,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryBlack.withOpacity(0.10),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock, color: AppColors.iconColor),
                suffixIcon: const Icon(Icons.visibility_off, color: AppColors.iconColor),
                hintText: 'Password',
                hintStyle: const TextStyle(color: Color(0xf7000000)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
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
              const Spacer(),
              Text(
                'Forget Password',
                style: AppTextStyles.regularStyle.copyWith(color: const Color(0xffCA8E8E)),
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Center(
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width*0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationAppBar()));
                    },
                    child: Container(
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
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(child: Divider(thickness: 2,height: 2,color: AppColors.iconColor,)),
                      const SizedBox(width: 10,),
                      Text(
                        'Or sign In with',
                        style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.iconColor),
                      ),
                      const SizedBox(width: 10,),
                      const Expanded(child: Divider(thickness: 2,height: 2,color: AppColors.iconColor,)),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,width: MediaQuery.sizeOf(context).width*0.41,
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.primaryWhite,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primaryBlack.withOpacity(0.10),
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ]
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                  height: 25,width: 25,
                                  image: AssetImage("assets/icons/sign_up/google.png")),
                              const SizedBox(width: 20,),
                              Text(
                                'Google',
                                style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.iconColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 45,width: MediaQuery.sizeOf(context).width*0.41,
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.mainColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primaryBlack.withOpacity(0.10),
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                              ),
                            ]

                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                  height: 25,width: 25,
                                  image: AssetImage("assets/icons/sign_up/Vector.png")),
                              const SizedBox(width: 10,),
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
