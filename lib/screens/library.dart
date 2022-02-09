import 'package:flutter/material.dart';
import 'package:musicplayer/constants.dart';
import 'package:musicplayer/screens/nowplaing.dart';

class Library extends StatelessWidget {
  //template for genre card
  Widget genreCard(String img, String title, String foll) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(gcard)),
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$foll Followers",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }

  //template for songlist
  Widget Songcard(
      int sr, String img, String title, String artist, String time) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("$sr"),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  artist,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(time),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'Popular',
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: cblue,
              ),
            ),
          ),
          //views of differnet genre scrollable
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                //calling the genre card template widget as we want with data passing
                genreCard(pop, "POP", '2,521,234'),
                genreCard(hiphop, "HipHop", '221,234'),
                genreCard(country, "Country", '431,234'),
                genreCard(heavymetal, "Heavy Metal", '55,222,324'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: Text(
              "Trending Albums",
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: cblue,
              ),
            ),
          ),
          //container for trending songs
          Container(
            width: MediaQuery.of(context).size.width,
            height: 330,
            padding: EdgeInsets.fromLTRB(45, 30, 45, 40),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(scard)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //we call the song card template widget
                  Songcard(1, art1, 'BlindingLights', 'The Weekend', '3:11'),
                  Songcard(2, art2, 'The Box', 'Roddy Rich', '2:15'),
                  Songcard(3, art3, 'Dont Start Now', 'Dua Lipa ', '3:51'),
                  Songcard(4, art4, 'Circles', 'Post Molone ', '3:01'),
                  Songcard(5, art5, 'Intentions', ' Justin Biber', '2:59'),
                ],
              ),
            ),
          ),
          //Navigation Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                podcast,
                scale: 1.1,
              ),
              Image.asset(
                search,
                scale: 1.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NowPlaying()));
                },
                child: Image.asset(
                  list,
                  scale: 1.1,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
