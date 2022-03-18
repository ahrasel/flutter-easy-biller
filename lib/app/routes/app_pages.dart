import '../bindings/category_details_binding.dart';
import '../ui/pages/category_details_page/category_details_page.dart';
import '../bindings/category_update_binding.dart';
import '../ui/pages/category_update_page/category_update_page.dart';
import '../bindings/category_create_binding.dart';
import '../ui/pages/category_create_page/category_create_page.dart';
import '../bindings/category_list_binding.dart';
import '../ui/pages/category_list_page/category_list_page.dart';
import 'package:get/get.dart';

import '../bindings/account_binding.dart';
import '../bindings/change_password_binding.dart';
import '../bindings/home_binding.dart';
import '../bindings/invoices_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/settings_binding.dart';
import '../bindings/splash_binding.dart';
import '../bindings/update_profile_binding.dart';
import '../bindings/users_create_binding.dart';
import '../bindings/users_details_binding.dart';
import '../bindings/users_list_binding.dart';
import '../bindings/users_update_binding.dart';
import '../ui/pages/account_page/account_page.dart';
import '../ui/pages/change_password_page/change_password_page.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/invoices_page/invoices_page.dart';
import '../ui/pages/login_page/login_page.dart';
import '../ui/pages/settings_page/settings_page.dart';
import '../ui/pages/splash_page/splash_page.dart';
import '../ui/pages/unknown_route_page/unknown_route_page.dart';
import '../ui/pages/update_profile_page/update_profile_page.dart';
import '../ui/pages/users_create_page/users_create_page.dart';
import '../ui/pages/users_details_page/users_details_page.dart';
import '../ui/pages/users_list_page/users_list_page.dart';
import '../ui/pages/users_update_page/users_update_page.dart';
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
      binding: AccountBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.invoices,
      page: InvoicesPage.new,
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.changePassword,
      page: ChangePasswordPage.new,
      binding: ChangePasswordBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.settings,
      page: SettingsPage.new,
      binding: SettingsBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.updateProfile,
      page: UpdateProfilePage.new,
      binding: UpdateProfileBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.usersList,
      page: UsersListPage.new,
      binding: UsersListBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.usersCreate,
      page: UsersCreatePage.new,
      binding: UsersCreateBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.usersUpdate,
      page: UsersUpdatePage.new,
      binding: UsersUpdateBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.usersDetails,
      page: UsersDetailsPage.new,
      binding: UsersDetailsBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.categoryList,
      page: CategoryListPage.new,
      binding: CategoryListBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.categoryCreate,
      page: CategoryCreatePage.new,
      binding: CategoryCreateBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.categoryUpdate,
      page: CategoryUpdatePage.new,
      binding: CategoryUpdateBinding(),
      transition: _defaultTransition,
    ),
    GetPage(
      name: AppRoutes.categoryDetails,
      page: CategoryDetailsPage.new,
      binding: CategoryDetailsBinding(),
      transition: _defaultTransition,
    ),
  ];
}
