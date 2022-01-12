import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height / 100;
    double width = size.width / 100;

    TextStyle primary = GoogleFonts.raleway(
        color: Color.fromARGB(255, 243, 243, 243),
        fontWeight: FontWeight.w400,
        fontSize: 25);
    TextStyle h3 = GoogleFonts.raleway(
        color: Color.fromARGB(255, 243, 243, 243),
        fontWeight: FontWeight.w600,
        fontSize: 30);
    TextStyle h2 = GoogleFonts.raleway(
        color: Color.fromARGB(255, 243, 243, 243),
        fontWeight: FontWeight.w600,
        fontSize: 50);
    TextStyle text = GoogleFonts.raleway(
        color: Color.fromARGB(255, 243, 243, 243),
        fontWeight: FontWeight.w300,
        fontSize: 25);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
              child: Container(
            alignment: Alignment.center,
            child: ListView(
              shrinkWrap: true,
              children: [
                Image.asset('res/develelopment_illustration.png'),

                /*-------Who I am-------*/
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        width: width*100>1300? width * 40: width*80,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          '''Who I am''',
                          style: h3,
                          maxLines: null,
                        ),
                      ),
                      Container(
                        width: width*100>1300? width * 40: width*80,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          '''I am a mobile app developer living in Turkey/Bursa. I have been into computer since I was 4 years old. 'People were being shocked when they see me on computer' says my mom. I was playing games and sharing them on YouTube when I was 10.\n\n''' +
                              '''At that time, I started designing some stuff (time tables, studying sheets etc.) to sell them in school. But, I don't even remember what did I do with that money :)''',
                          style: text,
                          maxLines: null,
                        ),
                      ),
                    ],
                  ),
                ),
                /*-------English-------*/
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        width: width*100>1300? width * 40: width*80,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          '''English''',
                          style: h3,
                          maxLines: null,
                        ),
                      ),
                      Container(
                        width: width*100>1300? width * 40: width*80,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          '''I learnt English when I was preparation class in high school. That led me to watch English content on the internet which expanded my vision. \n\n''' +
                              '''I have started photoshop freelancing right after I learned graphic design deeper. And, got hired a couple of times''',
                          style: text,
                          maxLines: null,
                        ),
                      ),
                    ],
                  ),
                ),
                /*-------Programming-------*/
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        width: width*100>1300? width * 40: width*80,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          '''Programming''',
                          style: h3,
                          maxLines: null,
                        ),
                      ),
                      Container(
                        width: width*100>1300? width * 40: width*80,
                        margin: EdgeInsets.all(5),
                        child: Text(
                          '''I got introduced to programming in the last quarter of 2020, and made some entry level apps with Java [One of My Apps]. \n\n''' +
                              '''Then some of my friends suggested me to start learning Flutter. And, my heart started to Flutter :D''',
                          style: text,
                          maxLines: null,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 100,
                  color: Colors.white,
                  height: height * 30,
                  margin: EdgeInsets.symmetric(vertical: width*3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: width*30,
                        child: Image.asset('../res/profile_picture.png')),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Oguz Demir',
                                style: GoogleFonts.raleway(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                    fontSize: width*2 + 30)),
                            Text('Flutter Developer',
                                style: GoogleFonts.raleway(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                    fontSize: width*1.5)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                /*-----Achivements-----*/
                Column(
                  children: [
                    Text(
                      'Achivements',
                      style: h2,
                    ),
                    Container(
                      width: width * 60,
                      margin: EdgeInsets.symmetric(horizontal: width * 20),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: width * 30,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    '../res/weboost.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                  width: width * 30,
                                  child: Text(
                                    '''I joined WeBoost hackathon and we became the 4th in the competition.''',
                                    style: h3,
                                    maxLines: null,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
          Container(
            height: height * 7,
            color: Color.fromARGB(255, 15, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'CodeOguz',
                      style: h3,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Who I Am',
                      style: primary,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Achivements',
                      style: primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
