import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class SliderStack extends StatelessWidget {
  const SliderStack(
      {super.key,
      required this.artistName,
      required this.details,
      required this.follow,
      required this.listenNow});
  final String artistName;
  final String details;
  final String follow;
  final String listenNow;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeInImage(
          placeholder: MemoryImage(kTransparentImage),
          image: const AssetImage('assets/images/slide1.png'),
          width: double.infinity,
          height: 150,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 10,
          left: 15,
          child: Text(
            artistName,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 50,
          left: 15,
          child: SizedBox(
            width: 250,
            child: Text(
              details,
              maxLines: 3, // Set the maximum number of lines
              overflow: TextOverflow.ellipsis,

              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the border radius as needed
                    ),
                  ),
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.blue)),
                  minimumSize: MaterialStateProperty.all(const Size(
                      100, 30)), // Adjust the height and width as needed
                ),
                child: const Text(
                  'Listen Now',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the border radius as needed
                    ),
                  ),
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.deepPurple)),
                  minimumSize: MaterialStateProperty.all(const Size(
                      100, 30)), // Adjust the height and width as needed
                ),
                child: const Text('Follow'),
              )
            ],
          ),
        )
      ],
    );
  }
}
