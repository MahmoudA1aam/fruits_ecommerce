import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_e_commerce/core/helper_functions/routes/route_names.dart';
import 'package:fruits_e_commerce/core/theming/colors_app.dart';
import 'package:fruits_e_commerce/core/theming/text_style_app.dart';
import 'package:fruits_e_commerce/features/onboarding_view/presentation/widgets/page_view_item.dart';

import '../../../../core/helper_functions/shard_pref_helper/shard_pref_helper.dart';
import '../../../../core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: PageView(
          controller: pageController,
          children: [
            PageviewItem(
              isVisible: true,
              image: "assets/images/page_view_item_image.svg",
              backgroundImage: "assets/images/page_view_item_background.svg",
              subtitle:
                  'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مرحبًا بك في',
                    style: TextStylesApp.font23Black700,
                  ),
                  Text(
                    '  HUB',
                    style: TextStylesApp.font23Black700.copyWith(
                      color: ColorsApp.orange,
                    ),
                  ),
                  Text(
                    'Fruit',
                    style: TextStylesApp.font23Black700.copyWith(
                      color: ColorsApp.primarygreen,
                    ),
                  ),
                ],
              ),
            ),
            PageviewItem(
              isVisible: false,
              image: "assets/images/page_view_item_image.svg",
              backgroundImage: "assets/images/page_view_item_2_background.svg",
              subtitle:
                  'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
              title: Text(
                'ابحث وتسوق',
                textAlign: TextAlign.center,
                style: TextStylesApp.font23Black700,
              ),
            )
          ],
        )),
        DotsIndicator(
          dotsCount: 2,
          position: currentPage.toDouble(),
          decorator: const DotsDecorator(
            activeColor: ColorsApp.primarygreen,
            color: ColorsApp.lightgreen,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: CustomButton(
              onPressed: () async {
                await SharedPreferenceUtils.saveDate(
                    key: "IsOnBordingViewSeen", value: true);
                Navigator.pushReplacementNamed(context, RouteNames.loginView);
              },
              title: 'ابدأ الان',
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}
