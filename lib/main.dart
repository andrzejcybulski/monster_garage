import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 83, 83, 83),
          toolbarHeight: 150,
          title: Row(
            children: [
              const SizedBox(
                width: 250,
              ),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/monster_logo.jpg'),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                  width: 180,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: 'MONSTER GARAGE MOBILNY MECHANIK',
                      style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          height: 0.8,
                        ),
                      ),
                    ),
                    softWrap: true,
                  )),
              SizedBox(width: 80),
              Text(
                'O nas',
                style: GoogleFonts.bebasNeue(),
              ),
              SizedBox(width: 50),
              Text(
                'Cennik',
                style: GoogleFonts.bebasNeue(),
              ),
              SizedBox(width: 50),
              Text(
                'Usługi',
                style: GoogleFonts.bebasNeue(),
              ),
              SizedBox(width: 50),
              Text(
                'Kontakt',
                style: GoogleFonts.bebasNeue(),
              ),
              SizedBox(width: 80),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.call, color: Colors.white, size: 20),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Zadzwoń',
                      style:
                          GoogleFonts.bebasNeue(fontSize: 20, letterSpacing: 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
