import 'package:flutter/material.dart';
import 'package:music/List.dart';
import 'package:music/Sount.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings sets) {
        List<String> _music1 = sets.name.toString().split("/");
        List<String> _music2 = sets.name.toString().split("/");
        if (_music1[1] == "Sount") {
          return MaterialPageRoute(builder: (context) {
            return Sount(int.parse(_music1[2]), int.parse(_music2[2]));
          });
        }
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Icon(Icons.home, size: 30),
            title: Text(
              "Music Player",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            expandedHeight: 200.0,
            stretch: true,
            floating: true,
            snap: true,
            pinned: true,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.vertical(
            //     bottom: Radius.circular(25),
            //   ),
            // ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Music",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Image.asset(
                "lib/assets/image3.jpg",
                fit: BoxFit.cover,
              ),
              stretchModes: [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 29, 29, 29),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/Sount/$index");
                  },
                  child: Card(
                    shadowColor: Colors.white,
                    color: Color.fromARGB(255, 29, 29, 29),
                    child: ListTile(
                      trailing: Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Colors.white,
                      ),
                      title: Text(
                        ListMAlumot.MusicNomi[index],
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(ListMAlumot.Artist[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("lib/assets/music.webp"),
                      ),
                    ),
                  ),
                ),
              ),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
