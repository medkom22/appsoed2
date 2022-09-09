import 'package:appsoed/presentation/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../common/navigator.dart';
import 'provider/main_notifier.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainNotifier(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
        ),
        debugShowCheckedModeBanner: false,
        title: 'Appsoed Pro',
        home: const MainPage(),
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
      ),
    );
  }
}
