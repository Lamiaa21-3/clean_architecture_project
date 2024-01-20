import 'package:clean_arichtecture_project/presentation/resources/color_manager.dart';
import 'package:clean_arichtecture_project/presentation/resources/styles_manager.dart';
import 'package:clean_arichtecture_project/presentation/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../resources/image_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/string_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

late final List<SliderObject> _list = _getSliderList();
final pages = List.generate(
    4,
    (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 20,
          ),
        ));

List<SliderObject> _getSliderList() => [
      SliderObject(AppStrings.onBoardingTitle1, AppStrings.onBoardingSubTitle1,
          ImageAssets.onBoardingLogo1),
      SliderObject(AppStrings.onBoardingTitle2, AppStrings.onBoardingSubTitle2,
          ImageAssets.onBoardingLogo2),
      SliderObject(AppStrings.onBoardingTitle3, AppStrings.onBoardingSubTitle3,
          ImageAssets.onBoardingLogo3),
      SliderObject(AppStrings.onBoardingTitle4, AppStrings.onBoardingSubTitle4,
          ImageAssets.onBoardingLogo4),
    ];
PageController _pageController = PageController();

int _currentIndex = 0;

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(
              sliderObject: _list[index],
            );
          }),
      bottomSheet: Container(
        color: ColorManager.primary,
        height: 180,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                child: const Text(
                  AppStrings.skip,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            _getBottomSheetWidget(),
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheetWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            //go to previous slide
            _pageController.animateToPage(_getPreviousIndex(),
                duration: Duration(milliseconds: 300),
                curve: Curves.bounceInOut);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        // SmoothPageIndicator(
        //   controller: _pageController,
        //   count: pages.length,
        //   effect: const WormEffect(
        //     dotHeight: 10,
        //     dotWidth: 10,
        //     type: WormType.thinUnderground,
        //   ),
        // ),
        IconButton(
          onPressed: () {
            //go to previous slide
            _pageController.animateToPage(_getNextIndex(),
                duration: Duration(milliseconds: 300),
                curve: Curves.bounceInOut);
          },
          icon: Icon(Icons.arrow_forward_ios_outlined),
        ),
      ],
    );
  }

  int _getPreviousIndex() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  int _getNextIndex() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key, required this.sliderObject})
      : super(key: key);
  final SliderObject sliderObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: getRegularStyle(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: getRegularStyle(color: Colors.black),
          ),
        ),
        SvgPicture.asset(sliderObject.image),
      ],
    );
  }
}

class SliderObject {
  final String title;
  final String subTitle;
  final String image;

  SliderObject(this.title, this.subTitle, this.image);
}
