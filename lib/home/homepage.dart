import 'package:educational_app/advertise_page/advertise.dart';
import 'package:educational_app/audiolist/audio_list.dart';
import 'package:educational_app/categories/categories_list.dart';
import 'package:educational_app/image_gallery/image_list.dart';
import 'package:educational_app/videolist/ourvideos_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill
          ),
         ),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                 height: 300,
                 width: MediaQuery.of(context).size.width,
                 decoration: const BoxDecoration(image: DecorationImage(
                     image: AssetImage('assets/images/homepagepngimage.png'),
                       fit: BoxFit.fill
                 ),
                ),
                ),
                Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(left: 5,right:5,top: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const TextField(
                    decoration: InputDecoration(
                      hintText: "Search Course",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff9B59B6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  child: const CategoriesList(),
                ),
                 const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 200,
                  child: const AdvertiseTiles(),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our Video Courses",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/allVideosScreen.tag');
                        },
                        child: Text(
                          "See All",
                          style: GoogleFonts.roboto(
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 13,
                        color: Colors.blue.shade600,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 300,
                  child: const OurVideosList(),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our Audio Courses",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/allAudiosScreen.tag');
                        },
                        child: Text(
                          "See All",
                          style: GoogleFonts.roboto(
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 13,
                        color: Colors.blue.shade600,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 280,
                  child: const AudioList(),
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our Image gallery",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'allImagesScreen.tag');
                        },
                        child: Text(
                          "See All",
                          style: GoogleFonts.roboto(
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 13,
                        color: Colors.blue.shade600,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 151,
                  child: const ImageList(),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
