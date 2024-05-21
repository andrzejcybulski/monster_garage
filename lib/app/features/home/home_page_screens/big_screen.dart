import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BigScreen extends StatelessWidget {
  BigScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var bodyWidth = MediaQuery.of(context).size.width;
    var bodyHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top + kToolbarHeight);
    var key1 = GlobalKey();
    var key2 = GlobalKey();
    var key3 = GlobalKey();
    var key4 = GlobalKey();
    var key5 = GlobalKey();

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            key: key5,
            pinned: false,
            snap: true,
            floating: true,
            backgroundColor: const Color.fromARGB(255, 83, 83, 83),
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsets.fromLTRB(200, 0, 200, 60),
                title: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 29,
                            backgroundImage:
                                AssetImage('images/monster_logo.jpg'),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                              width: 160,
                              child: RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text: 'MONSTER GARAGE MOBILNY MECHANIK',
                                  style: GoogleFonts.bebasNeue(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      height: 0.8,
                                    ),
                                  ),
                                ),
                                softWrap: true,
                              )),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(
                        width: 300,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          // backgroundColor: Colors.green,
                          // minimumSize: const Size(70, 35),
                          ),
                      onPressed: () => launchUrlString('tel://514483455'),
                      child: Row(
                        children: [
                          const Icon(Icons.smartphone,
                              color: Colors.yellow, size: 17),
                          const SizedBox(width: 3),
                          Text(
                            '514 483 455',
                            style: GoogleFonts.firaSans(
                                fontSize: 18,
                                letterSpacing: 0.2,
                                color: Colors.yellow),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                // background: Image.asset(
                //   'images/pobrane.png',
                //   fit: BoxFit.fill,
                // ),
                ),
            bottom: AppBar(
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  const Expanded(
                    child: SizedBox(width: 300),
                  ),
                  TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        key1.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      'O MNIE',
                      selectionColor: Colors.black,
                      style: GoogleFonts.firaSans(
                        color: const Color.fromARGB(255, 83, 83, 83),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(width: 1),
                  ),
                  TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        key2.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      'USŁUGI',
                      style: GoogleFonts.firaSans(
                        color: const Color.fromARGB(255, 83, 83, 83),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(width: 1),
                  ),
                  TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        key3.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      'CENNIK',
                      style: GoogleFonts.firaSans(
                        color: const Color.fromARGB(255, 83, 83, 83),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(width: 1),
                  ),
                  TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        key4.currentContext!,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease,
                      );
                    },
                    child: Text(
                      'KONTAKT',
                      style: GoogleFonts.firaSans(
                        color: const Color.fromARGB(255, 83, 83, 83),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(width: 300),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    key: key1,
                    color: Colors.grey,
                    height: bodyHeight,
                    width: bodyWidth,
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
                  const Divider(
                    height: 1,
                    color: Colors.transparent,
                  ),
                  Container(
                    key: key2,
                    color: Colors.grey,
                    height: bodyHeight,
                    width: bodyWidth,
                    child: const Text('Container 2'),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.transparent,
                  ),
                  Container(
                    key: key3,
                    color: Colors.grey,
                    height: bodyHeight,
                    width: bodyWidth,
                    child: const Text('Container 3'),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.transparent,
                  ),
                  Container(
                    key: key4,
                    color: Colors.grey,
                    height: bodyHeight,
                    width: bodyWidth,
                    child: const Text('Container 4'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            tooltip: 'Do góry',
            onPressed: () {
              Scrollable.ensureVisible(
                key5.currentContext!,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );

              // scrollController.animateTo(
              //   scrollController.position.minScrollExtent,
              //   curve: Curves.easeOut,
              //   duration: const Duration(milliseconds: 500),
              // );
            },
            child: Icon(Icons.arrow_drop_up),
          ),
          // FloatingActionButton.extended(
          //   label: Text(
          //     '514 483 455',
          //     style: GoogleFonts.bebasNeue(fontSize: 18, letterSpacing: 0.2),
          //   ),
          //   icon: Icon(Icons.smartphone, color: Colors.white, size: 17),
          //   onPressed: () => launchUrlString('tel://514483455'),
          //   tooltip: 'Zadzwoń teraz!',
          //   backgroundColor: Colors.green,
          //   hoverColor: Colors.red,
          //   focusColor: Colors.black,
          //   splashColor: Colors.blue,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(8),
          //   ),
          // ),
        ],
      ),
    );
  }
}
