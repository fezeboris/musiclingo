import 'package:flutter/material.dart';
import 'package:musiclingo/widgets/container_background.dart';
import 'package:musiclingo/widgets/home/recommended_album.dart';
import 'package:musiclingo/widgets/home/recommended_artist.dart';
import 'package:musiclingo/widgets/home/recommended_songs.dart';
import 'package:musiclingo/widgets/main_drawer.dart';

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
        ],
      )),
    );
  }
}
