import 'package:flutter/material.dart';
import 'package:waafii/global/custom_assets/custom_button.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_images.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController _pageController = PageController();
  bool isLastPage = false;
  int selectedPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnboardData> _pages = [
    OnboardData(
      imgUrl: AppImagePath.onboardingFirstPng,
      customTitle: '. Rasdfgasdgf  a tap away.',
      descriptionTitle:
      "This is description Find verified service providers across Africa for errands, deliveries, and everyday tasks. Reliable help is just a tap away. ",
    ),
    OnboardData(
      imgUrl: AppImagePath.onboardingSecondPng,
      customTitle: 'Find verified service providers across Africa for er.',
      descriptionTitle:
      "This is description Find veri ryday tasks. Reliable help is just a tap away.",
    ),
    OnboardData(
      imgUrl: AppImagePath.onboardingThirdPng,
      customTitle: 'this is third Image',
      descriptionTitle:
      "Find verified service providers across Africa for errands, deliveries, and everyday tasks. Reliable help is just a tap away.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                    (index) =>
                    Container(
                      width: selectedPageIndex == index ? 40 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: selectedPageIndex == index
                            ? Colors.orange
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4
                      ),
                    ),
              ),
            ),

            SizedBox(height: 24),

            Text(
              _pages[selectedPageIndex].customTitle,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              _pages[selectedPageIndex].descriptionTitle,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 80),
            Column(
              children: [
                isLastPage
                    ? CustomButton(
                  onTap: _onTapGetStartButton,
                  title: 'Get Start',
                )
                    : CustomButton(
                  onTap: () {
                    _pageController.nextPage(
                      duration: Duration(microseconds: 30),
                      curve: Curves.decelerate,
                    );
                  },
                  title: 'Next',
                ),
                isLastPage ? SizedBox(height: 45,) : TextButton(
                  onPressed: () {
                    setState(() {
                      selectedPageIndex = 2;
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

      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            isLastPage = (index == 2);
            selectedPageIndex = index;
          });
        },
        itemCount: _pages.length,
        controller: _pageController,
        itemBuilder: (context, index) {
          return Image.asset(
            _pages[index].imgUrl,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          );

          //   Flex(
          //   direction: Axis.vertical,
          //   children: [
          //     Flexible(
          //       child:
          //     ),
          //     Flexible(
          //       child: Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 20),
          //         child: SingleChildScrollView(
          //           child: Column(
          //             children: [
          //               SizedBox(height: 24),
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: List.generate(
          //                   _pages.length,
          //                   (index) => Container(
          //                     margin: EdgeInsets.only(right: 6),
          //                     height: 7,
          //                     width: selectedPageIndex == index ? 50 : 10,
          //                     decoration: BoxDecoration(
          //                       borderRadius: BorderRadius.circular(20),
          //                       color: selectedPageIndex == index
          //                           ? Colors.orange
          //                           : Colors.grey,
          //                       // shape: BoxShape.circle,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //
          //
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // );
        },
      ),
    );
  }

  // Get Start Button handler
  void _onTapGetStartButton() {
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
