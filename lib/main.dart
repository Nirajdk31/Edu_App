import 'package:educational_app/audioplayer/screens/music/music_screen.dart';
import 'package:educational_app/billing/billingaddresslist.dart';
import 'package:educational_app/billing/billingdetailspage.dart';
import 'package:educational_app/billing/newaddresslist.dart';
import 'package:educational_app/billing/paymentmode.dart';
import 'package:educational_app/home/homepageprovider.dart';
import 'package:educational_app/mywallet/mywalletscreen.dart';
import 'package:educational_app/onboardingscreens/liquidswipescreen.dart';
import 'package:educational_app/login/loginscreen.dart';
import 'package:educational_app/otp/otpscreen.dart';
import 'package:educational_app/splash/splashscreen.dart';
import 'package:educational_app/thankyou/orderprovider.dart';
import 'package:educational_app/thankyou/orderstatusscreen.dart';
import 'package:educational_app/videolist/all_videos.dart';
import 'package:educational_app/videoplayer/videoplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'audiolist/all_audios.dart';
import 'creditcard/creditcardpage.dart';
import 'drawer/drawer_layout.dart';
import 'flipcard/flipcarddemo.dart';
import 'image_gallery/all_images.dart';
import 'mypurchase/mypurchasescreen.dart';
import 'mypurchase/showdetailspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MobileHomePageProvider()),
        ChangeNotifierProvider.value(value: OrderProvider())
      ],
      child: MaterialApp(
        title: 'Education App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const SplashScreen(),
        routes: {
          LoginScreen.tag: (context) =>const  LoginScreen(),
          OTPScreen.tag: (context) =>const  OTPScreen(),
          PaymentStatusPage.tag: (context) =>const  PaymentStatusPage(),
          BillingDetailsPage.tag: (context) =>const  BillingDetailsPage(),
          AddressList.tag:(context) => const AddressList(),
          PaymentMode.tag:(context) => const PaymentMode(),
          AllAudios.tag: (context) => const AllAudios(status: true,),
          AllImages.tag: (context) => const AllImages(status: true,),
          AllVideos.tag: (context) => const AllVideos(status: true,),
          DrawerLayout.tag : (context) => const DrawerLayout(),
          FlipCardDemo.tag: (context) => const FlipCardDemo(),
          VideoPlayerUi.tag: (context) => const VideoPlayerUi(),
          MusicScreen.tag: (context) => MusicScreen(),
          MyPurchase.tag: (context) => const MyPurchase(status: true,),
          MyAddress.tag: (context) => const MyAddress(),
          CreditCard.tag: (context) => const CreditCard(),
          ShowDetails.tag: (context) => const ShowDetails(),
          LiquidSwipeScreen.tag: (context) => LiquidSwipeScreen(),
          MyWalletScreen.tag: (context) => const MyWalletScreen(),
        },
      ),
    );
  }
}

