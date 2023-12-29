import 'package:flutter/material.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';

class HomeScreenProvider extends StatefulWidget {
  const HomeScreenProvider({super.key});

  @override
  State<HomeScreenProvider> createState() => _HomeScreenProviderState();
}

class _HomeScreenProviderState extends State<HomeScreenProvider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.08,
          width: MediaQuery.sizeOf(context).width * 1,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.mainColor,
                AppColors.mainLight,
              ]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                'Home',
                style: AppTextStyles.regularStyle
                    .copyWith(color: AppColors.primaryWhite,fontSize: 20),
              ),
              const Spacer(),

            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child:
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'Service Title',
                   style: AppTextStyles.regularStyle.copyWith(color: AppColors.mainColor),
                 ),
                 const SizedBox(height: 10,),

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
                      hintText: 'Enter Services Title',
                       hintStyle: const TextStyle(color: Color(0xf30000000)),
                       filled: true,
                       fillColor: Colors.white,
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide.none,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 10,),
                 Text(
                   'Price',
                   style: AppTextStyles.regularStyle.copyWith(color: AppColors.mainColor),
                 ),
                 const SizedBox(height: 10,),
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
                       hintText: 'Enter Price',
                       hintStyle: const TextStyle(color: Color(0xf30000000)),
                       filled: true,
                       fillColor: Colors.white,
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide.none,
                       ),
                     ),
                   ),
                 ),
                 const SizedBox(height: 15,),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                   width: MediaQuery.sizeOf(context).width*1,
                   decoration: BoxDecoration(
                     border: Border.all(color: AppColors.mainColor.withOpacity(0.50)),
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: AppColors.primaryBlack.withOpacity(0.10),
                         offset: const Offset(0, 2),
                         blurRadius: 4,
                       ),
                     ],
                 ),

                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                       height: MediaQuery.sizeOf(context).height*0.15,
                       width: MediaQuery.sizeOf(context).width*0.57,
                       decoration: BoxDecoration(
                         color: AppColors.primaryWhite,
                       border: Border.all(color: AppColors.mainLight),
                       borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                         BoxShadow(
                           color: AppColors.primaryBlack.withOpacity(0.10),
                           offset: const Offset(0, 2),
                           blurRadius: 4,
                         ),
                       ],

                     ),
                      child: Center(
                         child: Text(
                           'Upload Logo',
                           style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.mainColor),
                         ),
                       ),

                     ),
                     const SizedBox(height: 20,),
                     GestureDetector(
                       child: Container(
                         height: 50,
                         width: MediaQuery.sizeOf(context).width*0.85,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: AppColors.mainLight
                         ),
                         child: Center(
                           child: Text(
                             'Upload Logo',
                             style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),
                           ),
                         ),
                       ),
                     ),

                   ],
                 ),

                 ),
                 const SizedBox(height: 40,),
                 GestureDetector(
                   child: Container(
                     height: 50,
                     width: MediaQuery.sizeOf(context).width*1,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: AppColors.mainLight
                     ),
                     child: Center(
                       child: Text(
                         'Upload Data',
                         style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.primaryWhite),
                       ),
                     ),
                   ),
                 ),

               ],
             )
            ),
          ),
        ),
      ],
    );
  }
}
