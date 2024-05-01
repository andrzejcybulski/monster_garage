import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;
    double pixelRatio = mediaQueryData.devicePixelRatio;
    var screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 400) {
        return const _buildBigScreen();
      } else {
        return _buildSmallScreen();
      }
    });
  }
}

class _buildSmallScreen extends StatelessWidget {
  const _buildSmallScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mały ekran')),
    );
  }
}

class _buildBigScreen extends StatelessWidget {
  const _buildBigScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // body: Stack(
      //   children: [
      //     Container(
      //       width: screenWidth,
      //       height: screenHeight,
      //       child: ListView(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(
      //                 horizontal: 200.0, vertical: 5),
      //             child: Container(
      //               color: Colors.black,
      //               width: 700,
      //               height: 700,
      //               child: const Center(
      //                 child: Text(
      //                   'Container 1',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(
      //                 horizontal: 200.0, vertical: 5),
      //             child: Container(
      //               color: Colors.blue,
      //               width: 700,
      //               height: 700,
      //               child: const Center(
      //                 child: Text(
      //                   'Container 2',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Stack(
      //       children: [
      //         Positioned(
      //           top: 0,
      //           left: 0,
      //           right: 0,
      //           child: Container(
      //             color: Colors.grey,
      //             height: 140,
      //             child: Column(
      //               children: [
      //                 const SizedBox(height: 10),
      //                 Row(
      //                   children: [
      //                     const SizedBox(
      //                       width: 250,
      //                     ),
      //                     const CircleAvatar(
      //                       radius: 60,
      //                       backgroundImage:
      //                           AssetImage('images/monster_logo.jpg'),
      //                     ),
      //                     const SizedBox(
      //                       width: 30,
      //                     ),
      //                     SizedBox(
      //                         width: 180,
      //                         child: RichText(
      //                           textAlign: TextAlign.justify,
      //                           text: TextSpan(
      //                             text: 'MONSTER GARAGE MOBILNY MECHANIK',
      //                             style: GoogleFonts.bebasNeue(
      //                               textStyle: const TextStyle(
      //                                 color: Colors.white,
      //                                 fontSize: 30,
      //                                 height: 0.8,
      //                               ),
      //                             ),
      //                           ),
      //                           softWrap: true,
      //                         )),
      //                     const SizedBox(width: 80),
      //                     TextButton(
      //                       onPressed: () {},
      //                       child: Text(
      //                         'O nas',
      //                         style: GoogleFonts.bebasNeue(
      //                             color: Colors.white, fontSize: 20),
      //                       ),
      //                     ),
      //                     const SizedBox(width: 50),
      //                     TextButton(
      //                       onPressed: () {},
      //                       child: Text(
      //                         'Cennik',
      //                         style: GoogleFonts.bebasNeue(
      //                             color: Colors.white, fontSize: 20),
      //                       ),
      //                     ),
      //                     const SizedBox(width: 50),
      //                     TextButton(
      //                       onPressed: () {},
      //                       child: Text(
      //                         'Usługi',
      //                         style: GoogleFonts.bebasNeue(
      //                             color: Colors.white, fontSize: 20),
      //                       ),
      //                     ),
      //                     const SizedBox(width: 50),
      //                     TextButton(
      //                       onPressed: () {},
      //                       child: Text(
      //                         'Kontakt',
      //                         style: GoogleFonts.bebasNeue(
      //                             color: Colors.white, fontSize: 20),
      //                       ),
      //                     ),
      //                     const SizedBox(width: 80),
      //                     ElevatedButton(
      //                       style: ElevatedButton.styleFrom(
      //                         backgroundColor: Colors.green,
      //                         minimumSize: const Size(150, 50),
      //                       ),
      //                       onPressed: () {},
      //                       child: Row(
      //                         mainAxisAlignment:
      //                             MainAxisAlignment.spaceEvenly,
      //                         children: [
      //                           const Icon(Icons.call,
      //                               color: Colors.white, size: 20),
      //                           const SizedBox(
      //                             width: 5,
      //                           ),
      //                           Text(
      //                             'Zadzwoń',
      //                             style: GoogleFonts.bebasNeue(
      //                                 fontSize: 20, letterSpacing: 1),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         const Positioned(
      //           top: 100,
      //           left: 700,
      //           child: CircleAvatar(
      //             radius: 50,
      //             backgroundImage: AssetImage('images/pobrane.png'),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),

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
              width: 800,
              height: 600,
              child: Text('Container 1'
                  // screenSize.width.toString()
                  ),
            ),
            Container(
              color: Colors.grey,
              width: 800,
              height: 600,
              child: Text(
                'Container 2',
                // screenSize.height.toString()
              ),
            ),
            Container(
              color: Colors.grey,
              width: 800,
              height: 600,
              child: const Text('Text'),
            ),
          ],
        ),
      ),
    );
  }
}
