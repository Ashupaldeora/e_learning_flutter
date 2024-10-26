import 'package:e_learning/utils/colors.dart';
import 'package:e_learning/view/login_register/lets_you_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboarding';

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: [
              buildPage(
                title: "Online Learning",
                description:
                    "We Provide Classes Online Classes and Pre Recorded Lectures.",
              ),
              buildPage(
                title: "Learn from Anytime",
                description:
                    "Booked or Save the Lectures for Future Reference.",
              ),
              buildPage(
                title: "Get Online Certificate",
                description: "Analyse your scores and Track your results.",
                isLastPage: true,
              ),
            ],
          ),
          Positioned(
            bottom: 35.h,
            left: 20.h,
            right: 20.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ...List.generate(
                        3,
                        (index) => buildIndicator(index == _currentPage),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: (_currentPage == 2) ? 150.h : null,
                    child: FloatingActionButton(
                      shape: (_currentPage == 2)
                          ? RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.r))
                          : CircleBorder(),
                      backgroundColor: kPrimaryColor,
                      onPressed: () {
                        if (_currentPage == 2) {
                          Get.offAllNamed(LetsYouInPage.routeName);
                        }
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: (_currentPage == 2)
                          ? Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(
                                  flex: 2,
                                ),
                                Text(
                                  'Get Started',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                Container(
                                  height: 35.h,
                                  width: 35.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 10.h),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          : Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                    ),
                  )
                ]),
          ),
          Positioned(
            top: 80.h,
            right: 20,
            child: TextButton(
              onPressed: () {
                Get.offAllNamed(LetsYouInPage.routeName);
              },
              child: Text(
                'Skip',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage({
    required String title,
    required String description,
    bool isLastPage = false,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 23.h,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 15.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.h,
              color: Colors.grey,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      height: 8.h,
      width: isActive ? 24.0.h : 8.0.h,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(8.0.h),
      ),
    );
  }
}
