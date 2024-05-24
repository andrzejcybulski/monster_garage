import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MediumScreen extends StatefulWidget {
  const MediumScreen({
    super.key,
  });

  @override
  State<MediumScreen> createState() => _MediumScreenState();
}

bool isVisible = false;
// double visiblePercentage = 0;

class _MediumScreenState extends State<MediumScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var bodyWidth = MediaQuery.of(context).size.width;
    var fullBodyHeight = MediaQuery.of(context).size.height;
    var bodyHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top + kToolbarHeight);
    var key1 = GlobalKey();
    var key2 = GlobalKey();
    var key3 = GlobalKey();
    var key4 = GlobalKey();
    var key5 = GlobalKey();
    // ScrollController controller = ScrollController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        // controller: controller,
        slivers: [
          SliverVisibilityDetector(
            onVisibilityChanged: (visibilityInfo) {
              var visiblePercentage = visibilityInfo.visibleFraction * 100;
              debugPrint(
                  'Widget ${visibilityInfo.key} is $visiblePercentage% visible');

              if (visiblePercentage < 33) {
                setState(() {
                  isVisible = true;
                });
              } else {
                setState(() {
                  isVisible = false;
                });
              }
              debugPrint('Widoczny? $isVisible');
            },
            key: key5,
            sliver: SliverAppBar(
              // key: key5,
              pinned: false,
              snap: false,
              floating: false,
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size(70, 35),
                        ),
                        onPressed: () => launchUrlString('tel://514483455'),
                        child: Row(
                          children: [
                            const Icon(Icons.smartphone,
                                color: Colors.white, size: 17),
                            const SizedBox(width: 3),
                            Text(
                              '514 483 455',
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 18, letterSpacing: 0.2),
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
                        style: GoogleFonts.raleway(
                          color: const Color.fromARGB(255, 83, 83, 83),
                          fontSize: 20,
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
                        style: GoogleFonts.raleway(
                          color: const Color.fromARGB(255, 83, 83, 83),
                          fontSize: 20,
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
                        style: GoogleFonts.raleway(
                          color: const Color.fromARGB(255, 83, 83, 83),
                          fontSize: 20,
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
                        style: GoogleFonts.raleway(
                          color: const Color.fromARGB(255, 83, 83, 83),
                          fontSize: 20,
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
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    key: key1,
                    color: Colors.grey,
                    height: fullBodyHeight,
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
                    height: fullBodyHeight,
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
                    height: fullBodyHeight,
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
                    height: fullBodyHeight,
                    width: bodyWidth,
                    child: const Text('Container 4'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton:
          // Visibility(
          //   visible: isVisible,
          // visible: visiblePercentage > 0 ? isVisible = false : isVisible = true,
          // child:
          AnimatedOpacity(
        curve: Curves.slowMiddle,
        opacity: isVisible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 150),
        child: FloatingActionButton(
          splashColor: Colors.green,
          backgroundColor: Colors.red,
          hoverColor: Colors.redAccent.withOpacity(1),
          child: Icon(Icons.keyboard_arrow_up),
          onPressed: () {
            Scrollable.ensureVisible(
              key5.currentContext!,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
        ),
      ),
      // ),
    );
  }
}

class CustomFABTest extends StatefulWidget {
  const CustomFABTest({
    required this.controller,
    super.key,
  });

  final ScrollController controller;

  @override
  State<CustomFABTest> createState() => _CustomFABState();
}

class _CustomFABState extends State<CustomFABTest> {
  @override
  void initState() {
    widget.controller.addListener(() {
      if (widget.controller.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (isVisible != false) {
          setState(() {
            isVisible = false;
          });
        } else {
          if (isVisible != true) {
            setState(() {
              isVisible = true;
            });
          }
        }
      }
    });
    super.initState();
  }

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: FloatingActionButton(
        isExtended: isVisible,
        onPressed: () {},
      ),
    );
  }
}
