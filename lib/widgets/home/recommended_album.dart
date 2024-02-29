import 'package:flutter/material.dart';
import 'package:musiclingo/widgets/custom_card.dart';
import 'package:musiclingo/widgets/home/headings.dart';

class RecommendedAlbum extends StatelessWidget {
  const RecommendedAlbum({super.key});
  void _viewAllAlbums() {}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Headings(
            recommend: 'Recommended',
            subtitle: 'Albums',
            viewMoreFunc: () {
              _viewAllAlbums();
            }),
        const SizedBox(
          height: 10,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCard(
                artistName: 'Scorpion',
                imageLink: 'assets/images/drakeAlbum.png',
                songTitle: 'Drake',
                album: true,
              ),
              CustomCard(
                artistName: 'Born To Die',
                imageLink: 'assets/images/lanaAlbum.png',
                songTitle: 'Lana Del Ray',
                album: true,
              ),
              CustomCard(
                artistName: 'Eminem Show',
                imageLink: 'assets/images/eminemAlbum.png',
                songTitle: 'Eminem',
                album: true,
              ),
              CustomCard(
                artistName: 'Hary Styles',
                imageLink: 'assets/images/song4.png',
                songTitle: 'As it was',
                album: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
