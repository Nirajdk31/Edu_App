import 'package:educational_app/audiolist/all_audios.dart';
import 'package:educational_app/home/homepageprovider.dart';
import 'package:educational_app/mywallet/mywalletscreen.dart';
import 'package:educational_app/thankyou/orderstatusScreen.dart';
import 'package:educational_app/videolist/all_videos.dart';
import 'package:educational_app/videomeet/videomeetscreen.dart';
import 'package:educational_app/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

import '../home/homepage.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    final choice = Provider.of<MobileHomePageProvider>(context);

    Widget screenWidget() {
      switch(choice.index){
        case 0:
          return const HomePage();
        case 1:
          return const VideoMeetingScreen();
        case 2:
          return const AllAudios(status: false,);
        case 3:
          return const AllVideos(status: false,);
        case 4:
          return const WishlistPage();
        default:
          return const HomePage();
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
            actionButtonDetails: SCActionButtonDetails(color: Colors.purple, icon: Icon(Icons.add), elevation: 4),
            items: [
          SCBottomBarItem(icon: Icons.home, title: "Home", onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
              .changeIndex(0);}),
          SCBottomBarItem(icon: Icons.videocam, title: "Meetings", onPressed: () {
                Provider.of<MobileHomePageProvider>(context, listen: false)
                    .changeIndex(1);
              }),
          SCBottomBarItem(icon: Icons.video_library_outlined, title: "Videos", onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
                .changeIndex(3);
          }),
          SCBottomBarItem(icon: Icons.audiotrack_rounded, title: "Audios", onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
                .changeIndex(2);
          }),
          ],
          circleItems: [
           SCItem(icon: const Icon(Icons.favorite), onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
                .changeIndex(4);
          }),
           SCItem(icon:const Icon(Icons.wallet_giftcard), onPressed: () {
            Navigator.of(context).pushNamed(MyWalletScreen.tag);
          }),
           SCItem(icon: const Icon(Icons.shopping_cart_rounded), onPressed: () {
            Navigator.of(context).pushNamed(PaymentStatusPage.tag);
          }),
         ],
        ),
          child: screenWidget(),
       ),
      )
    );
  }
}
