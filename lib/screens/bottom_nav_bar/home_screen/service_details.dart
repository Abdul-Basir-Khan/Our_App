import 'package:flutter/material.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {

  final List typeOfConsultantPic=[
    'assets/images/home_screen/services_details/bussiness-conslt.jpg',
    'assets/images/home_screen/services_details/market-constl.jpg',
    'assets/images/home_screen/services_details/medical-const.jpg',

  ];
  final List typeOfConsultant=[
    'Business Consultant',
    'Marketing Consultant',
    'Medical Consultant',
  ];
  final List nameOfConsultant=[
    'Ali',
    'Ahmad',
    'Aliya',
    'Ali',
    'Ahmad',
    'Aliya',
  ];
  final List listOfConsultantPic=['assets/images/home_screen/services_details/linkedin-sales-solutions-pAtA8xe_iVM-unsplash.jpg',
  'assets/images/home_screen/services_details/man.jpg',
  'assets/images/home_screen/services_details/sofia-mQtcrK22CN8-unsplash.jpg',
    'assets/images/home_screen/services_details/linkedin-sales-solutions-pAtA8xe_iVM-unsplash.jpg',
    'assets/images/home_screen/services_details/man.jpg',
    'assets/images/home_screen/services_details/sofia-mQtcrK22CN8-unsplash.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
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
                GestureDetector(
                  onTap:(){
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.primaryWhite,
                  ),
                ),
                const Spacer(),
                Text(
                  'Consultant Services',
                  style: AppTextStyles.regularStyle
                      .copyWith(color: AppColors.primaryWhite),
                ),
                const Spacer(),
                const Icon(
                  Icons.notifications,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:
                        List.generate(typeOfConsultantPic.length,   (index) => Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child:   Image(
                                  height:
                                  MediaQuery.sizeOf(context).height * 0.12,
                                  width: MediaQuery.sizeOf(context).width * 0.40,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      typeOfConsultantPic[index].toString()),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                               typeOfConsultant[index].toString(),
                                style: AppTextStyles.regularStyle
                                    .copyWith(color: AppColors.primaryBlack),
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ...List.generate(
                       listOfConsultantPic.length,
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
                                                    listOfConsultantPic[index]
                                                        .toString())))),
                                    const SizedBox(width: 15),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            nameOfConsultant[index].toString(),
                                            style: AppTextStyles.semiBoldStyle
                                                .copyWith(
                                                    color: AppColors.mainColor),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Rating",
                                                    style: AppTextStyles.regularStyle.copyWith(color: AppColors.mainLight.withOpacity(0.40)),
                                                  ),
                                                  const SizedBox(height: 5,),
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      const Icon(Icons.star,color: Color(0xffFDE640),size: 20,),
                                                      const SizedBox(width: 5,),
                                                      Text(
                                                        "4.5",
                                                        style: AppTextStyles.regularStyle,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Job",
                                                    style: AppTextStyles.regularStyle.copyWith(color: AppColors.mainLight.withOpacity(0.40)),
                                                  ),
                                                  const SizedBox(height: 5,),
                                                  Text(
                                                    "111",
                                                    style: AppTextStyles.regularStyle,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Rate",
                                                    style: AppTextStyles.regularStyle.copyWith(color: AppColors.mainLight.withOpacity(0.40)),
                                                  ),
                                                  const SizedBox(height: 5,),
                                                  Text(
                                                    "\$12 / hrs",
                                                    style: AppTextStyles.regularStyle,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
