import 'package:flutter/material.dart';
import 'package:musiclingo/widgets/custom_card.dart';
import 'package:musiclingo/widgets/home/headings.dart';

class RecommendedMix extends StatelessWidget {
  const RecommendedMix({super.key});
  void _viewAllMix() {}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Headings(
            recommend: 'Recommended',
            subtitle: 'Mix',
            viewMoreFunc: () {
              _viewAllMix();
            }),
        const SizedBox(
          height: 10,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCard(
                artistName: '',
                imageLink: 'assets/images/song1.png',
                songTitle: 'Trending Songs',
                album: false,
              ),
              CustomCard(
                artistName: '',
                imageLink: 'assets/images/song2.png',
                songTitle: 'Weekly Top Songs',
                album: false,
              ),
              CustomCard(
                artistName: '',
                imageLink: 'assets/images/song3.png',
                songTitle: 'Popular songs',
                album: false,
              ),
              CustomCard(
                artistName: '',
                imageLink: 'assets/images/song4.png',
                songTitle: 'Classic songs',
                album: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
