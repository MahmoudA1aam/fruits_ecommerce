import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_e_commerce/core/helper_functions/shard_pref_helper/shard_pref_helper.dart';

import '../../../../core/helper_functions/routes/route_names.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashView> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset("assets/images/leaf_tree.svg"),
            ],
          ),
          SvgPicture.asset("assets/images/fruit_logo.svg"),
          SvgPicture.asset(
            "assets/images/bubbles.svg",
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  void excuteNaviagtion() async {
    Future.delayed(const Duration(seconds: 3), () async {
      var isOnBoardingViewSeen =
          SharedPreferenceUtils.getDate(key: "IsOnBordingViewSeen");
      if (isOnBoardingViewSeen == true) {
        Navigator.pushReplacementNamed(context, RouteNames.loginView);
      } else {
        Navigator.pushReplacementNamed(context, RouteNames.onboardingView);
      }
    });
  }
}
