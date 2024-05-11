import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var bodyHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top + kToolbarHeight);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(130.0),
          child: Stack(
            children: [
              AppBar(
                backgroundColor: const Color.fromARGB(255, 83, 83, 83),
                toolbarHeight: 150,
                title: Row(
                  children: [
                    const Expanded(
                      flex: 10,
                      child: SizedBox(
                        width: 250,
                      ),
                    ),
                    // Expanded(
                    //   flex: 4,
                    //   child:
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/monster_logo.jpg'),
                    ),
                    // ),
                    const Expanded(
                      flex: 0,
                      child: SizedBox(
                        width: 25,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                          width: 200,
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: 'MONSTER GARAGE MOBILNY MECHANIK',
                              style: GoogleFonts.bebasNeue(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  height: 0.8,
                                ),
                              ),
                            ),
                            softWrap: true,
                          )),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(width: 50),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'O nas',
                          style: GoogleFonts.bebasNeue(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(width: 50),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cennik',
                          style: GoogleFonts.bebasNeue(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(width: 50),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Usługi',
                          style: GoogleFonts.bebasNeue(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(width: 50),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Kontakt',
                          style: GoogleFonts.bebasNeue(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(width: 50),
                    ),
                    Expanded(
                      flex: 7,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Icon(Icons.call,
                                  color: Colors.white, size: 20),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Zadzwoń',
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 20, letterSpacing: 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 10,
                      child: SizedBox(
                        width: 250,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
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
              width: 800,
              height: 600,
              child: Text('Container 2'),
            ),
            Container(
              color: Colors.grey,
              width: 800,
              height: 600,
              child: const Text('Container 3'),
            ),
          ],
        ),
      ),
    );
  }
}
