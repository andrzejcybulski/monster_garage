import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallHorizontalScreen extends StatelessWidget {
  const SmallHorizontalScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var bodyHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top + kToolbarHeight);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 83, 83, 83),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/monster_logo.jpg'),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SizedBox(
                        width: 90,
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: 'MONSTER GARAGE MOBILNY MECHANIK',
                            style: GoogleFonts.bebasNeue(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                height: 0.8,
                              ),
                            ),
                          ),
                          softWrap: true,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                width: 42.5,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(70, 25),
                ),
                onPressed: () {},
                child: Text(
                  '514 483 455',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 15, letterSpacing: 0.2),
                ),
              ),
              const SizedBox(
                width: 42.5,
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              color: Colors.grey,
              height: bodyHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Width: ${screenSize.width.toString()}'),
                  Text('Height: ${screenSize.height.toString()}'),
                  Text('Body Height: ${bodyHeight.toString()}'),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              height: bodyHeight,
              child: const Text('Container 2'),
            ),
            Container(
              color: Colors.grey,
              height: bodyHeight,
              child: const Text('Container 3'),
            ),
          ],
        ),
      ),
    );
  }
}
