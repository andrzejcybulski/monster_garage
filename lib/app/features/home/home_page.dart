import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 83, 83, 83),
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
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        height: 0.8,
                      ),
                    ),
                  ),
                  softWrap: true,
                )),
            const SizedBox(width: 80),
            TextButton(
              onPressed: () {},
              child: Text(
                'O nas',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(width: 50),
            TextButton(
              onPressed: () {},
              child: Text(
                'Cennik',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(width: 50),
            TextButton(
              onPressed: () {},
              child: Text(
                'Usługi',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(width: 50),
            TextButton(
              onPressed: () {},
              child: Text(
                'Kontakt',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(width: 80),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.call, color: Colors.white, size: 20),
                  const SizedBox(
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
    );
  }
}
