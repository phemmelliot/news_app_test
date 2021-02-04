// import 'package:flutter/material.dart';
// import 'package:news_app/ui/dashboard/dashboard.dart';
// import 'package:news_app/ui/invest/invest.dart';
// import 'package:news_app/ui/loans/loans.dart';
// import 'package:news_app/ui/settings/profile/bvn.dart';
// import 'package:news_app/ui/settings/profile/contact.dart';
// import 'package:news_app/ui/settings/profile/employment_information.dart';
// import 'package:news_app/ui/settings/profile/next_kin.dart';
// import 'package:news_app/ui/settings/profile/otp_verification.dart';
// import 'package:news_app/ui/settings/profile/personal_information.dart';
// import 'package:news_app/ui/settings/profile/profile.dart';
// import 'package:news_app/ui/settings/profile/reference_information.dart';
// import 'package:news_app/ui/settings/settings.dart';
//
// class TabRouter {
//   static Route<dynamic> generateHomeRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (context) => Dashboard());
//       case '/transfer':
//
//       case '/cash-out':
//
//       case '/cash-out-others':
//
//       case '/buy-airtime':
//
//       case '/pay-bills':
//       default:
//         return MaterialPageRoute(builder: (context) => Dashboard());
//     }
//   }
//
//   static Route<dynamic> generateInvestRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(
//           builder: (context) => Invest(),
//         );
//         break;
//       default:
//         return MaterialPageRoute(
//           builder: (context) => Invest(),
//         );
//     }
//   }
//
//   static Route<dynamic> generateLoansRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (context) => Loans());
//       default:
//         return MaterialPageRoute(builder: (context) => Loans());
//     }
//   }
//
//   static Route<dynamic> generateSettingsRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (context) => Settings());
// //      case '/notifications':
// //        return MaterialPageRoute(builder: (context) => NotificationsPage());
//       case '/profile':
//         return MaterialPageRoute(builder: (context) => Profile());
//       case '/personal':
//         return MaterialPageRoute(builder: (context) => Personal());
//       case '/reference':
//         return MaterialPageRoute(builder: (context) => Reference());
//       case '/employment':
//         return MaterialPageRoute(builder: (context) => Employment());
//       case '/next_kin':
//         return MaterialPageRoute(builder: (context) => NextOfKin());
//       case '/bvn':
//         return MaterialPageRoute(builder: (context) => Bvn());
//       case '/bvn-otp':
//         return MaterialPageRoute(builder: (context) => BvnOTP());
//       case '/contact':
//         return MaterialPageRoute(builder: (context) => Contact());
// //      case '/manage-cards':
// //        return MaterialPageRoute(builder: (context) => ManageCardsPage());
// //      case '/history':
// //        return MaterialPageRoute(builder: (context) => HistoryPage());
//       default:
//         return MaterialPageRoute(builder: (context) => Settings());
//     }
//   }
// }
