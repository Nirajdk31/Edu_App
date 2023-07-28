import 'package:flutter/material.dart';
import 'package:educational_app/audioplayer/screens/music/components/custom_body.dart';
import 'package:educational_app/audioplayer/screens/music/components/custom_bottom_nav_bar.dart';
import 'package:educational_app/audioplayer/screens/music/components/play_button.dart';

class MusicScreen extends StatelessWidget {
  static const String tag ='/audioPlayerScreen.tag';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [

            //it contain image , background and songs,
            CustomBody(),

            CustomBottomNavBar(),

            PlayButton(),
          ],
        ),
      ),
    );
  }
}
