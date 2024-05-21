import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SmallHorizontalScreen extends StatelessWidget {
  const SmallHorizontalScreen({
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
      endDrawer: NaviDrawer(
        key1: key1,
        key2: key2,
        key3: key3,
        key4: key4,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              key: key5,
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: const Color.fromARGB(255, 83, 83, 83),
              title: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 18,
                          backgroundImage:
                              AssetImage('images/monster_logo.jpg'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                            width: 130,
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: 'MONSTER GARAGE MOBILNY MECHANIK',
                                style: GoogleFonts.bebasNeue(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
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
                    child: SizedBox(),
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
                  // const Expanded(
                  //   child: SizedBox(),
                  // ),
                ],
              )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
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
                    Divider(
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
                    Divider(
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
                    Divider(
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
          ),
        ],
      ),
    );
  }
}

class NaviDrawer extends StatelessWidget {
  const NaviDrawer({
    super.key,
    required this.key1,
    required this.key2,
    required this.key3,
    required this.key4,
  });

  final GlobalKey<State<StatefulWidget>> key1;
  final GlobalKey<State<StatefulWidget>> key2;
  final GlobalKey<State<StatefulWidget>> key3;
  final GlobalKey<State<StatefulWidget>> key4;
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      backgroundColor: const Color.fromARGB(255, 83, 83, 83),
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close, color: Colors.white),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    key1.currentContext!,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                },
                child: Text(
                  'O MNIE',
                  selectionColor: Colors.black,
                  style: GoogleFonts.raleway(color: Colors.white, fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    key2.currentContext!,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                },
                child: Text(
                  'USŁUGI',
                  style: GoogleFonts.raleway(color: Colors.white, fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    key3.currentContext!,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                },
                child: Text(
                  'CENNIK',
                  style: GoogleFonts.raleway(color: Colors.white, fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    key4.currentContext!,
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                },
                child: Text(
                  'KONTAKT',
                  style: GoogleFonts.raleway(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Divider(color: Colors.white),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => launchUrlString('tel://514483455'),
                        child: Row(
                          children: [
                            Icon(Icons.smartphone,
                                color: Colors.white, size: 20),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '514 483 455',
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/pobrane.png'),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                    width: 240,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'Darmowy dojazd na terenie całej Warszawy!',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            height: 1,
                          ),
                        ),
                      ),
                      softWrap: true,
                    )),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
