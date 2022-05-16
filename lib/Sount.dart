import 'package:flutter/material.dart';
import 'package:music/List.dart';

class Sount extends StatefulWidget {
  int? _index, _name;
  Sount(this._index, this._name);
  @override
  State<Sount> createState() => _SountState();
}

class _SountState extends State<Sount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/image0.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (() => Navigator.pop(context)),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        "Music",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                  ),
                  child: Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage("lib/assets/image2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        ListMAlumot.MusicNomi[widget._index!],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ListMAlumot.Artist[widget._index!],
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "0:00",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text("3:32", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.skip_previous_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 40,
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
