import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.artistName,
      required this.imageLink,
      required this.songTitle,
      required this.album});
  final String imageLink;
  final String artistName;
  final String songTitle;
  final bool album;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 160,
      margin: const EdgeInsets.only(right: 10),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageLink,
            width: double.infinity,
            height: 120,
            fit: BoxFit.cover,
          ),
          Text(
            songTitle,
            textAlign: TextAlign.start,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                artistName,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                    fontSize: 14),
              ),
              if (album)
                Image.asset(
                  'assets/images/album.png',
                  width: 20,
                )
            ],
          )
        ],
      ),
    );
  }
}
