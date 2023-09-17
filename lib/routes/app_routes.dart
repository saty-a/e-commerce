import 'package:ecommerce_app/modules/Payment_options/Payment/payment_screen.dart';
import 'package:ecommerce_app/modules/Payment_options/add_card/add_card_screen.dart';
import 'package:ecommerce_app/modules/about_us/about_us_screen.dart';
import 'package:ecommerce_app/modules/authentication/enter_otp/otp_screen.dart';
import 'package:ecommerce_app/modules/authentication/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:ecommerce_app/modules/authentication/login/cubit/login_screen_cubit.dart';
import 'package:ecommerce_app/modules/authentication/login/login_screen.dart';
import 'package:ecommerce_app/modules/authentication/login_with_otp/cubit/login_with_otp_cubit.dart';
import 'package:ecommerce_app/modules/authentication/login_with_otp/login_with_otp_screen.dart';
import 'package:ecommerce_app/modules/authentication/reset_password/cubit/reset_password_cubit.dart';
import 'package:ecommerce_app/modules/authentication/reset_password/reset_password_screen.dart';
import 'package:ecommerce_app/modules/authentication/sign_up/cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/modules/authentication/sign_up/sign_up_screen.dart';
import 'package:ecommerce_app/modules/cart/cart_screen.dart';
import 'package:ecommerce_app/modules/customer_reviews/add_review/add_review_screen.dart';
import 'package:ecommerce_app/modules/customer_reviews/customer_review/customer_reviews_screen.dart';
import 'package:ecommerce_app/modules/customer_reviews/customer_review/widgets/image_preview.dart';
import 'package:ecommerce_app/modules/dashboard/cubit/dashboard_cubit.dart';
import 'package:ecommerce_app/modules/home_search/cubit/home_search_cubit.dart';
import 'package:ecommerce_app/modules/home_search/home_search_screen.dart';
import 'package:ecommerce_app/modules/notification/notification_screen.dart';
import 'package:ecommerce_app/modules/onboarding/onboarding_screen/onboarding_screen.dart';
import 'package:ecommerce_app/modules/onboarding/splash/splash_screen.dart';
import 'package:ecommerce_app/modules/orders/order_details/order_details.dart';
import 'package:ecommerce_app/modules/orders/orders_list/orders_list_screen.dart';
import 'package:ecommerce_app/modules/orders/orders_summary/orders_summary.dart';
import 'package:ecommerce_app/modules/orders/payment/payment.dart';
import 'package:ecommerce_app/modules/orders/razorpay/razorpay.dart';
import 'package:ecommerce_app/modules/orders/return_order/cubit/return_order_cubit.dart';
import 'package:ecommerce_app/modules/orders/return_status/return_status.dart';
import 'package:ecommerce_app/modules/product_category/product_category_screen.dart';
import 'package:ecommerce_app/modules/product_details/cubit/product_deatils_cubit.dart';
import 'package:ecommerce_app/modules/product_details/product_details_screen.dart';
import 'package:ecommerce_app/modules/product_subcategories/product_subcategories_screen.dart';
import 'package:ecommerce_app/modules/save_address/my_address_book/my_address_book_screen.dart';
import 'package:ecommerce_app/modules/save_address/saved_address_screen/cubit/saved_address_cubit.dart';
import 'package:ecommerce_app/modules/save_address/saved_address_screen/saved_address_screen.dart';
import 'package:ecommerce_app/modules/save_address/select_location/select_location_screen.dart';
import 'package:ecommerce_app/modules/support/support_screen.dart';
import 'package:ecommerce_app/modules/support_chat/chat_screen.dart';
import 'package:ecommerce_app/modules/terms_and_policies/terms_and_policies_screen.dart';
import 'package:ecommerce_app/modules/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules/authentication/enter_otp/cubit/enter_otp_cubit.dart';
import '../modules/authentication/forgot_password/forgot_password_screen.dart';
import '../modules/dashboard/dashboard_screen.dart';
import '../modules/faq/faq_screen.dart';
import '../modules/notification-settings/cubit/notification_settings_cubit.dart';
import '../modules/notification-settings/notiifcations_settings_screen.dart';
import '../modules/onboarding/splash/cubit/splash_cubit.dart';
import '../modules/orders/address/address.dart';
import '../modules/orders/coupon.dart';
import '../modules/orders/order_placed.dart';
import '../modules/orders/return_order/return_order.dart';
import '../modules/transaction_activity/transaction_activity_screen.dart';
import '../modules/wallet/wallet_screen.dart';

part 'app_pages.dart';

Map<String, WidgetBuilder> appRoute() {
  return {
    Routes.splash: (context) => BlocProvider(
          create: (context) => SplashCubit()..init(),
          child: SplashScreen(),
        ),
    Routes.dashboard: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => DashboardCubit(),
            ),
            // BlocProvider(
            //   create: (context) => HomeCubit()..addProducts(),
            // ),
          ],
          child: const DashboardScreen(),
        ),
    Routes.productDetails: (context) => BlocProvider(
          create: (context) => ProductDeatilsCubit(),
          child: ProductDetailsScreen(),
        ),
    Routes.onBoardingScreen: (context) => const OnBoardingScreen(),
    Routes.loginScreen: (context) => BlocProvider(
          create: (create) => LoginScreenCubit(),
          child: const LoginScreen(),
        ),
    Routes.signUpScreen: (context) => BlocProvider(
          create: (create) => SignUpCubit(),
          child: SignUpScreen(),
        ),
    Routes.loginWithOtpScreen: (context) => BlocProvider(
          create: (context) => LoginWithOtpCubit(),
          child: const LoginWithOtpScreen(),
        ),
    // Routes.addReview: (context) => BlocProvider(
    //       create: (context) => CustomerReviewCubit(),
    //       child: AddReviewScreen(),
    //     ),
    Routes.otpScreen: (context) => BlocProvider(
          create: (context) => EnterOtpCubit(),
          child: const OtpScreen(),
        ),
    Routes.savedAddress: (context) => BlocProvider(
          create: (context) => SavedAddressCubit(),
          child: const SavedAddress(),
        ),
    // Routes.customerReviews: (context) => BlocProvider(
    //       create: (context) => CustomerReviewCubit(),
    //       child: CustomerReviewsScreen(),
    //     ),
    Routes.homeSearch: (context) => BlocProvider(
          create: (context) => HomeSearchCubit(),
          child: const HomeSearchScreen(),
        ),
    Routes.customerReviews: (context) => CustomerReviewsScreen(),
    Routes.addReview: (context) => const AddReviewScreen(),
    Routes.wishlist: (context) => const WishlistScreen(),
    Routes.resetScreen: (context) => BlocProvider(
          create: (context) => ResetPasswordCubit(),
          child: ResetPasswordScreen(),
        ),
    Routes.forgotScreen: (context) => BlocProvider(
          create: (context) => ForgotPasswordCubit(),
          child: ForgotPasswordScreen(),
        ),
    Routes.returnOrder: (context) => BlocProvider(
          create: (context) => ReturnOrderCubit(),
          child: const ReturnOrder(),
        ),

    Routes.myAddresses: (context) => const MyAddressBookScreen(),
    Routes.selectLocation: (context) => const SelectLocationScreen(),
    Routes.termsAndPolicies: (context) => const TermsAndPoliciesScreen(),
    Routes.aboutUs: (context) => const AboutUsScreen(),
    Routes.support: (context) => const SupportScreen(),
    Routes.productCategory: (context) => const ProductCategoryScreen(),
    Routes.productSubcategory: (context) => const ProductSubcategoriesScreen(),
    //Routes.homeSearch: (context) => const HomeSearchScreen(),
    Routes.myCart: (context) => const CartScreen(),
    Routes.orderDetails: (context) => const OrderDetails(),
    Routes.orderList: (context) => const OrderListScreen(),
    Routes.orderSummary: (context) => const OrdersSummary(),
    Routes.razorPayView: (context) => const RazorPay(),
    Routes.notification: (context) => const NotificationScreen(),
    Routes.imagePreview: (context) => const ImagePreview(),
    Routes.wallet: (context) => const WalletScreen(),
    Routes.transactionActivity: (context) => const TransactionActivity(),
    Routes.addCard: (context) => const AddCard(),
    Routes.payment: (context) => const Payment(),
    Routes.supportChat: (context) => const SupportChatScreen(),
    Routes.notificationSettings: (context) => BlocProvider(
          create: (_) => NotificationSettingsCubit(),
          child: const NotificationSettingsScreen(),
        ),
    Routes.faq: (context) => const FaqScreen(),
    //Routes.homeSearch: (context) => const HomeSearchScreen(),

    Routes.coupon: (context) => Coupon(),
    Routes.orderPlaced: (context) => OrderPlaced(),
    Routes.address: (context) => Address(),
    Routes.payments: (context) => Payments(),
    Routes.returnStatus: (context) => const ReturnStatus(),
  };
}
