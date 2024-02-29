import 'package:flutter/material.dart';
import 'package:musiclingo/widgets/custom_card.dart';
import 'package:musiclingo/widgets/home/headings.dart';

class RecommendedSong extends StatelessWidget {
  const RecommendedSong({super.key});
  void _viewAllSongs() {}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Headings(
            recommend: 'Recommended',
            subtitle: 'Songs',
            viewMoreFunc: () {
              _viewAllSongs();
            }),
        const SizedBox(
          height: 10,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCard(
                artistName: 'Hary Styles',
                imageLink: 'assets/images/song1.png',
                songTitle: 'As it was',
                album: false,
              ),
              CustomCard(
                artistName: 'Tom odell',
                imageLink: 'assets/images/song2.png',
                songTitle: 'Another Love',
                album: false,
              ),
              CustomCard(
                artistName: 'Adel',
                imageLink: 'assets/images/song3.png',
                songTitle: 'Someone Like you',
                album: false,
              ),
              CustomCard(
                artistName: 'Hary Styles',
                imageLink: 'assets/images/song4.png',
                songTitle: 'As it was',
                album: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
