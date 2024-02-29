import 'package:flutter/material.dart';
import 'package:musiclingo/widgets/circled_image_card.dart';
import 'package:musiclingo/widgets/home/headings.dart';

class RecommendedArtist extends StatelessWidget {
  const RecommendedArtist({super.key});
  void _viewAllArtist() {}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Headings(
            recommend: 'Recommended',
            subtitle: 'Artist',
            viewMoreFunc: () {
              _viewAllArtist();
            }),
        const SizedBox(
          height: 10,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CircledImageCard(
                artistName: 'Billie Eilish',
                imageLink: 'assets/images/billie.png',
              ),
              CircledImageCard(
                artistName: 'Eminem',
                imageLink: 'assets/images/eminem.png',
              ),
              CircledImageCard(
                artistName: 'Adele',
                imageLink: 'assets/images/song4.png',
              ),
              CircledImageCard(
                artistName: 'Lana Del Ray',
                imageLink: 'assets/images/lana.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
