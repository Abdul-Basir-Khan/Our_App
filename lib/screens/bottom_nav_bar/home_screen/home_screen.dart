import 'package:flutter/material.dart';
import 'package:our_app/screens/bottom_nav_bar/home_screen/service_details.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List images = [
    'assets/images/home_screen/barber.svg',
    'assets/images/home_screen/cook.svg',
    'assets/images/home_screen/driver.svg',
    'assets/images/home_screen/labour.svg',
    'assets/images/home_screen/tailor.svg',
    'assets/images/home_screen/washing.svg',
  ];
  final List servicesAds = [
    'assets/images/home_screen/book consultant.jpg',
    'assets/images/home_screen/cooks.jpg',
    'assets/images/home_screen/mechanics.jpg',
    'assets/images/home_screen/barber.jpg',
    'assets/images/home_screen/Computer _tech.jpg',

  ];

  final List name = [
    'Barber',
    'Cook',
    'Driver',
    'Labour',
    'Tailor',
    'Mechanics',
  ];

  final List imagesSpecialist = [
    'assets/images/home_screen/services/call.jpg',
    'assets/images/home_screen/services/computer-technician.jpg',
    'assets/images/home_screen/services/cook.jpg',
    'assets/images/home_screen/services/hair.jpg',
    'assets/images/home_screen/services/repair.jpg',
  ];
  final List nameSpecialist = [
    'Book Consultant Service',
    'Computer Technician Service',
    'Cooking Service',
    'Hairstylist Service',
    'Mechanics Service',
  ];

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
              const Icon(
                Icons.menu,
                color: AppColors.primaryWhite,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basir',
                      style: AppTextStyles.regularStyle
                          .copyWith(color: AppColors.primaryWhite),
                    ),
                    Text(
                      'New York',
                      style: AppTextStyles.mediumStyle
                          .copyWith(color: AppColors.primaryWhite),
                    ),
                  ],
                ),
              )
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Let\'s Take Care\nOf You',
                        style: AppTextStyles.mediumStyle
                            .copyWith(color: AppColors.iconColor, fontSize: 25),
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("assets/images/home_screen/image 1.png"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(servicesAds.length, (index) =>

                          Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:   Image(
                            height:
                            MediaQuery.sizeOf(context).height * 0.17,
                            width: MediaQuery.sizeOf(context).width * 0.46,
                            fit: BoxFit.cover,
                            image: AssetImage(
                                servicesAds[index].toString()),
                          ),
                        ),
                      ),),

                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
          
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: AppTextStyles.mediumStyle
                            .copyWith(color: AppColors.mainLight),
                      ),
                      const Spacer(),
                      Text(
                        'See All',
                        style: AppTextStyles.mediumStyle.copyWith(
                          color: AppColors.mainLight,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        images.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.22,
                            height: 90,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: SvgPicture.asset(
                                      color: AppColors.mainColor,
                                      images[index].toString()),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  name[index].toString(),
                                  style: AppTextStyles.regularStyle.copyWith(
                                      color: AppColors.mainLight, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Choose Expert',
                    style: AppTextStyles.mediumStyle
                        .copyWith(color: AppColors.mainLight),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ...List.generate(imagesSpecialist.length, (index) =>   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ServiceDetails()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 80,width: 60,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(imagesSpecialist[index].toString())))),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    nameSpecialist[index].toString(),
                                    style: AppTextStyles.semiBoldStyle.copyWith(color: AppColors.mainColor),
                                  ),
                                  const SizedBox(height: 10,),
                                  Text(
                                    "UPTO 10 % OFF",
                                    style: AppTextStyles.regularStyle,
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Divider(thickness: 2,height: 2,color: AppColors.mainColor.withOpacity(0.10),),
                      const SizedBox(height: 5,),
                    ],
                  ) ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
