import 'package:flutter/material.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.30,
              width: MediaQuery.sizeOf(context).width * 1,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.mainColor,
                    AppColors.mainLight,
                  ]),
               ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Profile',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),
                    ),
                  ),
                  const SizedBox(height: 20,)
                ],
              ),

              ),

            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1,
                padding: const EdgeInsets.symmetric(horizontal: 15,),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.primaryWhite,
                    AppColors.primaryWhite,
                  ]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
SizedBox(height: MediaQuery.sizeOf(context).height*0.17,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,children: [
                      Container(
                        height: 40,width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.mainLight,
                        ),
                          child: const Icon(Icons.dashboard,color: AppColors.primaryWhite,)),
                      const SizedBox(width: 20,),

                      Text('Dashboard',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainColor),)
                    ],),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,children: [
                      Container(
                          height: 40,width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mainLight,
                          ),
                          child: const Icon(Icons.payments_outlined,color: AppColors.primaryWhite,)),
                      const SizedBox(width: 20,),

                      Text('Payment History',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainColor),)
                    ],),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,children: [
                      Container(
                          height: 40,width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mainLight,
                          ),
                          child: const Icon(Icons.bar_chart,color: AppColors.primaryWhite,)),
                      const SizedBox(width: 20,),

                      Text('Statistics',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainColor),)
                    ],),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,children: [
                      Container(
                          height: 40,width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mainLight,
                          ),
                          child: const Icon(Icons.star,color: AppColors.primaryWhite,)),
                      const SizedBox(width: 20,),

                      Text('Reward',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainColor),)
                    ],),
                    const SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,children: [
                      Container(
                          height: 40,width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mainLight,
                          ),
                          child: const Icon(Icons.logout_outlined,color: AppColors.primaryWhite,)),
                      const SizedBox(width: 20,),

                      Text('Logout',style: AppTextStyles.mediumStyle.copyWith(color: AppColors.mainColor),)
                    ],),



                  ],
                ),
              ),
            )
          ],
        ),

        Positioned(
          top: MediaQuery.sizeOf(context).height*0.17,
          left: 0,
          right: 0,
          child
              : Container(
            height: MediaQuery.sizeOf(context).height*0.25,
            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 15,),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(blurRadius: 0.2,spreadRadius: 3,offset: const Offset(0,2),color: AppColors.primaryBlack.withOpacity(0.20))
              ],
              gradient: const LinearGradient(colors: [
                AppColors.mainLight,
                AppColors.mainColor,
              ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Spacer(),
                    Icon(Icons.edit,color: AppColors.primaryWhite,),

                  ],
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/images/home_screen/Ellipse 21.png"),
                      ),
                      const SizedBox(height: 15,),
                      Text('James Willions',style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),),
                      const SizedBox(height: 10,),
                      Text('@James Willions',style: AppTextStyles.regularStyle.copyWith(color: AppColors.primaryWhite),),
                    ],
                  ),
                )

              ],
            ),

          ),
        ),
      ],
    );
  }
}
