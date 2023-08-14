
import 'package:flutter/widgets.dart';
import 'package:umrah_package/screen/enquiry_screens/enquiry_page.dart';
import 'package:umrah_package/screen/pillars_umrah_screens/pillars_umrah_page.dart';
import 'package:umrah_package/screen/pillars_umrah_screens/umrah_tavaf.dart';
import 'package:umrah_package/screen/profile_screens/profile_page.dart';
import 'package:umrah_package/screen/splash_screens/splash_page.dart';
import 'package:umrah_package/screen/umrah_package_screens/best_umrah_package.dart';
import 'package:umrah_package/screen/umrah_package_screens/special_umrah_package.dart';
import 'package:umrah_package/screen/ziyarat_screens/acembality_page.dart';
import 'package:umrah_package/screen/ziyarat_screens/jiyarat_page.dart';

import '../screen/auth_screens/feedback_qna.dart';
import '../screen/auth_screens/mobile_Login_page.dart';
import '../screen/auth_screens/loginpage.dart';
import '../screen/auth_screens/register_Page.dart';
import '../screen/auth_screens/inquiry_Page.dart';
import '../screen/auth_screens/feedback.dart';
import '../screen/blogs_screens/blog.dart';
import '../screen/blogs_screens/blogs.dart';
import '../screen/enquiry_screens/enquiry_list_page.dart';

import '../screen/dashboard_screen/compleatumrah.dart';
import '../screen/dashboard_screen/dashboard_start.dart';

import '../screen/intro_screen/intro_page2.dart';
import '../screen/intro_screen/intro_page3.dart';
import '../screen/intro_screen/intro_page4.dart';
import '../screen/intro_screen/intro_page5.dart';



// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroPage2.routeName: (context) => const IntroPage2(),
  IntroPage3.routeName: (context) => const IntroPage3(),
  IntroPage4.routeName: (context) => const IntroPage4(),
  IntroPage5.routeName: (context) => const IntroPage5(),
  DashbordScreen.routeName:(context) =>  const DashbordScreen(),
  BestUmrahPackage.routeName:(context) => const BestUmrahPackage(),
  SpecialUmrahPackage.routeName:(context) => const SpecialUmrahPackage(),
  FeedbackPage.routeName:(context) =>  const FeedbackPage(),
  FeedBackQna.routeName:(context) => const FeedBackQna(),
  BlogsScreen .routeName:(context) =>  const BlogsScreen(),
  BlogScreen.routeName:(context) =>  const BlogScreen(),
  UmrahTavaf .routeName:(context) =>  const UmrahTavaf(),
  PillarsUmrah.routeName:(context) =>  const PillarsUmrah(),
  Accembality  .routeName:(context) =>  const Accembality(),
  Jiyarat .routeName:(context) =>  const Jiyarat(),
  MobilePageLoginPage.routeName:(context) =>  const MobilePageLoginPage(),
  LoginPage .routeName:(context) =>  const LoginPage(),
  ProfilePage.routeName:(context) =>  const ProfilePage(),
  RegisterPage .routeName:(context) =>  const RegisterPage(),
  CompletedUmrah.routeName:(context) =>  const CompletedUmrah(),
  InquiryPage .routeName:(context) =>  const InquiryPage(),
  EnquiryPage .routeName:(context) =>  const EnquiryPage(),
  EnquiryListPage.routeName:(context) =>  const EnquiryListPage(),
};
