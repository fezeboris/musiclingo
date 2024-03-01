import 'package:flutter/material.dart';
import 'package:musiclingo/widgets/bottom_navigation.dart';
import 'package:musiclingo/widgets/container_background.dart';
import 'package:musiclingo/widgets/home/recommended_album.dart';
import 'package:musiclingo/widgets/home/recommended_artist.dart';
import 'package:musiclingo/widgets/home/recommended_mix.dart';
import 'package:musiclingo/widgets/home/recommended_songs.dart';
import 'package:musiclingo/widgets/main_drawer.dart';
import 'package:musiclingo/widgets/slider.dart';
import 'package:musiclingo/widgets/slider_stack.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      drawer: const MainDrawer(),
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: const MainBottomNavigation(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.deepPurple,
            ),
            iconSize: 30.0, // Set the size of the icon here
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
        ],
        leading: const Icon(
          Icons.search,
          size: 28,
          color: Colors.blue,
        ),
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Home ',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
              TextSpan(
                text: 'Page',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ],
          ),
        ),
      ),
      body: const ContainerBacground(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RecommendedSong(),
            SizedBox(
              height: 20,
            ),
            RecommendedArtist(),
            SizedBox(
              height: 20,
            ),
            RecommendedAlbum(),
            SizedBox(
              height: 20,
            ),
            CustomSlider(
              sliderItems: [
                SliderStack(
                  artistName: 'Billie Eilish',
                  details:
                      'The origin of lorem ipsum dates back to the 1st century BC when the Roman orator Cicero wrote a philosophical treatise called "De Finibus Bonorum et Malorum" (On the Ends of Good and Evil). A passage ',
                  follow: '',
                  listenNow: '',
                ),
                SliderStack(
                  artistName: 'Locko',
                  details:
                      'The origin of lorem ipsum dates back to the 1st century BC when the Roman orator Cicero wrote a philosophical treatise called "De Finibus Bonorum et Malorum" (On the Ends of Good and Evil). A passage ',
                  follow: '',
                  listenNow: '',
                ),
                SliderStack(
                  artistName: 'Eminem',
                  details:
                      'The origin of lorem ipsum dates back to the 1st century BC when the Roman orator Cicero wrote a philosophical treatise called "De Finibus Bonorum et Malorum" (On the Ends of Good and Evil). A passage ',
                  follow: '',
                  listenNow: '',
                )
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
            RecommendedMix(),
          ],
        ),
      ),
    );
  }
}
