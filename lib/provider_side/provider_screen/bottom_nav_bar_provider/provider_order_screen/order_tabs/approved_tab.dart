import 'package:flutter/material.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';


class ApprovedTab extends StatefulWidget {
  const ApprovedTab({super.key});

  @override
  State<ApprovedTab> createState() => _ApprovedTabState();
}

class _ApprovedTabState extends State<ApprovedTab> {


  final List imagesSpecialist = [
    'assets/images/home_screen/services/call.jpg',
    'assets/images/home_screen/services/computer-technician.jpg',
    'assets/images/home_screen/services/cook.jpg',
    'assets/images/home_screen/services/hair.jpg',
    'assets/images/home_screen/services/repair.jpg',
    'assets/images/home_screen/services/call.jpg',
    'assets/images/home_screen/services/computer-technician.jpg',
    'assets/images/home_screen/services/cook.jpg',
  ];
  final List serviceName=[
    'Book A Consultant',
    'Computer Technician',
    'Cooking Service',
    'Hairstylist',
    'Mechanics',
    'Book A Consultant',
    'Computer Technician',
    'Cooking Service',

  ];
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SingleChildScrollView(
        child : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Column(
            children: List.generate(
                imagesSpecialist.length,
                    (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 80,
                            width: 60,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        imagesSpecialist[index]
                                            .toString())))),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Here is a order for',
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.mainColor,fontSize:16),
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                serviceName[index].toString(),
                                style: AppTextStyles.regularStyle,
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  Text(
                                    "Price",
                                    style: AppTextStyles.regularStyle,
                                  ),
                                  const Spacer(),
                                  Text(
                                    "\$ 10",
                                    style: AppTextStyles.regularStyle,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 2,
                      height: 2,
                      color: AppColors.mainColor.withOpacity(0.10),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
