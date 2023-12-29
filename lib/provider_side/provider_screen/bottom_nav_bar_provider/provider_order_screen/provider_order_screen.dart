import 'package:flutter/material.dart';
import 'package:our_app/provider_side/provider_screen/bottom_nav_bar_provider/provider_order_screen/order_tabs/approved_tab.dart';
import 'package:our_app/provider_side/provider_screen/bottom_nav_bar_provider/provider_order_screen/order_tabs/pending_tab.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';


class ProviderOrderScreen extends StatefulWidget {
  const ProviderOrderScreen({super.key});

  @override
  State<ProviderOrderScreen> createState() => _ProviderOrderScreenState();
}

class _ProviderOrderScreenState extends State<ProviderOrderScreen> {

  int  _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height:  MediaQuery.sizeOf(context).height*0.08,
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
                            'Pending Orders',
                            style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryWhite),
                          ),
                          const SizedBox(height: 5,),
                          Container(color: _currentIndex==0?AppColors.primaryWhite:Colors.transparent,height: 2,width: MediaQuery.sizeOf(context).width*0.35,)

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
                            'Approved Orders',
                            style: AppTextStyles.mediumStyle.copyWith(color: AppColors.primaryWhite),
                          ),
                          const SizedBox(height: 5,),
                          Container(color: _currentIndex==1?AppColors.primaryWhite:Colors.transparent,height: 2,width: MediaQuery.sizeOf(context).width*0.37,)

                        ],
                      ),
                    ),
                  ],
                ),),
              ),

            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _currentIndex==0?const PendingTab():_currentIndex==1?const ApprovedTab():const SizedBox(),


      ],
    )
    ;
  }
}
