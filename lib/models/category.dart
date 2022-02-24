import 'package:flutter/material.dart';

class Music {
  static List<Music> getMusic() => [
        Music(
          "Avatar",
          "we are one ",
          "3:11",
          "https://i.insider.com/5a79cb0cb06a793f078b4797?width=1000&format=jpeg&auto=webp",
        )
      ];

  String artistname;
  String songname;
  String duration;
  String poster;
  Music(this.artistname, this.songname, this.duration, this.poster);
}
