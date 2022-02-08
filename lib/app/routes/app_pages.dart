import '../bindings/invoices_binding.dart';
import '../ui/pages/invoices_page/invoices_page.dart';
import '../bindings/account_binding.dart';
import '../ui/pages/account_page/account_page.dart';
import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/splash_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/login_page/login_page.dart';
import '../ui/pages/splash_page/splash_page.dart';
import '../ui/pages/unknown_route_page/unknown_route_page.dart';
import 'app_routes.dart';

const _defaultTransition = Transition.native;

class AppPages {
  static final unknownRoutePage = GetPage(
    name: AppRoutes.unknown,
    page: () => const UnknownRoutePage(),
    transition: _defaultTransition,
  );

  static final List<GetPage> pages = [
    unknownRoutePage,
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      bindings: [
        HomeBinding(),
        AccountBinding(),
        InvoicesBinding(),
      ],
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.login,
      page: LoginPage.new,
      binding: LoginBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.account,
      page: AccountPage.new,
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.invoices,
      page: InvoicesPage.new,
      transition: _defaultTransition,
    ),
  ];
}
