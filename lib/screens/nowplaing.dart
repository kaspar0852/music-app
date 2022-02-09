import 'package:flutter/material.dart';
import 'package:musicplayer/constants.dart';
import 'package:musicplayer/screens/library.dart';
import 'package:wave_progress_bars/wave_progress_bars.dart';

class NowPlaying extends StatelessWidget {
  //to randomize wave height we create list of values
  final List<double> values = [
    9.0,
    31.0,
    20.0,
    15.0,
    15.0,
    16.0,
    14.0,
    27.0,
    41.0,
    0.0,
    27.0,
    51.0,
    67.0,
    42.0,
    54.0,
    60.0,
    36.0,
    66.0,
    16.0,
    3.0,
    3.0,
    64.0,
    61.0,
    51.0,
    37.0,
    41.0,
    29.0,
    46.0,
    16.0,
    55.0,
    0.0,
    0.0,
    41.0,
    44.0,
    9.0,
    66.0,
    58.0,
    64.0,
    45.0,
    29.0,
    23.0,
    50.0,
    35.0,
    21.0,
    34.0,
    7.0,
    27.0,
    35.0,
    63.0,
    29.0,
    4.0,
    36.0,
    63.0,
    60.0,
    62.0,
    59.0,
    48.0,
    38.0,
    48.0,
    23.0,
    22.0,
    49.0,
    2.0,
    39.0,
    47.0,
    1.0,
    32.0,
    43.0,
    33.0,
    27.0
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cwhite,
        body: Column(
          children: <Widget>[
            SizedBox(height: 30),

            //navigator buttons
            Row(
              children: <Widget>[
                SizedBox(width: 10),
                GestureDetector(
                  child: cbutton(back),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Library()));
                  },
                ),
                Spacer(),
                Text(
                  "Now Playing",
                  style: TextStyle(
                    color: cblue,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Spacer(),
                cbutton(options),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            //ALBUM ART DISK
            Container(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(disk))), //asset image is used to return
              child: CircleAvatar(
                backgroundImage: AssetImage(albumart),
                child: CircleAvatar(
                  backgroundColor: cwhite,
                  radius: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //song title and artist text
            Text(
              "We are the champion",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text("Queen",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                )),
            SizedBox(
              height: 20,
            ),

            //music controller
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //buttons are called pasing the symbols
                cbutton(previous),
                cbutton(play),
                cbutton(next),
              ],
            ),
            SizedBox(height: 20),
            //song progress bar
            Center(
              child: WaveProgressBar(
                progressPercentage: 40,
                listOfHeights: values,
                width: 350,
                initalColor: cblue.withAlpha(10),
                progressColor: cblue,
                backgroundColor: cwhite,
                timeInMilliSeconds: 30,
                isHorizontallyAnimated: false,
                isVerticallyAnimated: false,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //song time stamp

            RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: cblue.withAlpha(100),
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                  TextSpan(
                      text: "01.55",
                      style: TextStyle(
                        color: cblue,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: '|'),
                  TextSpan(
                    text: '3:15',
                  )
                ])),
          ],
        ));
  }
}
