import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_images.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  // Page Controller are define there
  final PageController _pageController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // on board screen image related work are start here
  final List<OnboardData> _pages = [
    OnboardData(
      imgUrl: AppImagePath.onboardingFirstPng,
      customTitle: 'this is First Image',
      descriptionTitle: "This is description",
    ),
    OnboardData(
      imgUrl: AppImagePath.onboardingSecondPng,
      customTitle: 'this is second Image',
      descriptionTitle: "This is description",
    ),
    OnboardData(
      imgUrl: AppImagePath.onboardingThirdPng,
      customTitle: 'this is third Image',
      descriptionTitle: "This is description",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            isLastPage = (index == 2);
          });
        },
        itemCount: _pages.length,
        controller: _pageController,
        itemBuilder: (context, index) {
          return Flex(
            direction: Axis.vertical,
            children: [
              Flexible(
                child: Image.asset(
                  _pages[index].imgUrl,
                  width: double.maxFinite,
                  height: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 24),
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Colors.orange,
                        ),
                      ),
                      SizedBox(height: 24),

                      Text(
                        'Connect With Trusted Locals',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        textAlign: TextAlign.center,
                        'Find verified service providers across Africa for errands, deliveries, and everyday tasks. Reliable help is just a tap away.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor,
                        ),
                      ),
                      SizedBox(height: 120),

                      isLastPage
                          ? CustomButton(onTap: _onTapGetStartButton, title: 'Get Start')
                          : Column(
                              children: [
                                CustomButton(
                                  onTap: () {
                                    _pageController.nextPage(
                                      duration: Duration(microseconds: 30),
                                      curve: Curves.decelerate,
                                    );
                                  },
                                  title: 'Next',
                                ),
                                SizedBox(height: 25,),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      index = 2;
                                    });
                                    _pageController.jumpToPage(2);
                                  },
                                  child: Text('Skip'),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
  // Get Start Button handler
  void _onTapGetStartButton(){
    //TODO /// WOrk
  }
}

// On board Data Model
class OnboardData {
  final String imgUrl;
  final String customTitle;
  final String descriptionTitle;

  OnboardData({
    required this.imgUrl,
    required this.customTitle,
    required this.descriptionTitle,
  });
}
