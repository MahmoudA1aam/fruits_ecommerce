import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_e_commerce/core/helper_functions/routes/on_generate_routes.dart';
import 'package:fruits_e_commerce/core/helper_functions/routes/route_names.dart';

import 'core/helper_functions/shard_pref_helper/shard_pref_helper.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceUtils.init();
  runApp(const FruitesECommerce());
}

class FruitesECommerce extends StatelessWidget {
  const FruitesECommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(fontFamily: "Cairo"),
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: RouteNames.splashView,
    );
  }
}
