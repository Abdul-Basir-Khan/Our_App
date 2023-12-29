import 'package:flutter/material.dart';
import 'package:our_app/provider_side/provider_screen/bottom_nav_bar_provider/bottom_nav_provider.dart';
import 'package:our_app/screens/registration/registration_screen.dart';
import 'package:our_app/themes/app_colors.dart';
import 'package:our_app/themes/app_textStyle.dart';

class ChooseAccountScreen extends StatefulWidget {
  const ChooseAccountScreen({super.key});

  @override
  State<ChooseAccountScreen> createState() => _ChooseAccountScreenState();
}

class _ChooseAccountScreenState extends State<ChooseAccountScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          color: AppColors.primaryWhite,
          padding: EdgeInsets.zero,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColors.mainColor,
                  AppColors.mainLight,
                ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.25,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: AppColors.primaryWhite,
                  ),
                  const Spacer(),
                  Center(
                      child: Text(
                    'Choose An Account',
                    style: AppTextStyles.boldStyle
                        .copyWith(color: AppColors.primaryWhite),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavProvider()));
                        });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.40,

                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 3,
                            color: _currentIndex == 1
                                ? AppColors.iconColor
                                : Colors.transparent,
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              height: 105,
                              image: AssetImage(
                                  "assets/images/choose_account/provider.png"),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: Text(
                                'Log In As Provider',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.mediumStyle
                                    .copyWith(color: AppColors.iconColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationScreen()));
                        });
                      },
                      child: Container(

                        width: MediaQuery.sizeOf(context).width*0.40,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 3,
                            color: _currentIndex == 2
                                ? AppColors.iconColor
                                : Colors.transparent,
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                height: 105,
                                image: AssetImage(
                                    "assets/images/choose_account/user.png"),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Log In As User',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.mediumStyle
                                    .copyWith(color: AppColors.iconColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
