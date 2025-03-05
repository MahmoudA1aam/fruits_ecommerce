import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_e_commerce/core/service/get_it/get_it.dart';
import 'package:fruits_e_commerce/core/service/routes/on_generate_routes.dart';
import 'package:fruits_e_commerce/core/service/routes/route_names.dart';
import 'package:fruits_e_commerce/firebase_options.dart';

import 'core/service/shard_pref_sevice/shard_pref_service.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await SharedPreferenceUtils.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
