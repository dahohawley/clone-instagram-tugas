import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          // Stories Row
          Row(
            children: <Widget>[
              // per person column
              generateStories(),
              generateStories(),
              generateStories(),
              generateStories(),
              generateStories(),
              generateStories(),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
          ),
          Divider(
            height: 0.5,
          ),
          Column(
            children: <Widget>[
              generateFeed(),

            ],
          )
        ],
      ),
    ));
  }

  Widget generateStories() {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(children: <Widget>[
        Container(
          width: 70.0,
          height: 70.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  image: NetworkImage(
                      "https://instagram.fcgk18-1.fna.fbcdn.net/vp/2cf27d727574789c9fb619a179afa359/5D72D119/t51.2885-19/s150x150/54513031_641865492941081_219842075753971712_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=105"))),
        ),
        Center(
          child: Text("daho.__"),
        )
      ]),
    );
  }

  Widget generateFeed() {
    return Column(
      children: <Widget>[
        // Uploader Information
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://instagram.fcgk18-1.fna.fbcdn.net/vp/2cf27d727574789c9fb619a179afa359/5D72D119/t51.2885-19/s150x150/54513031_641865492941081_219842075753971712_n.jpg?_nc_ht=instagram.fcgk18-1.fna.fbcdn.net&_nc_cat=105"),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Expanded(
                child: Text("daho.__"),
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Divider(
          height: 1.0,
        ),
        // Feed
        Image(
          image: NetworkImage(
              "https://scontent-sin2-1.cdninstagram.com/vp/82cc8a4f9b8cf4e9c67ef7ce792afc3f/5D58235C/t51.2885-15/sh0.08/e35/s640x640/56702425_801507206901730_3292434414275977420_n.jpg?_nc_ht=scontent-sin2-1.cdninstagram.com&_nc_cat=110 640w,https://scontent-sin2-1.cdninstagram.com/vp/0abdf905412b06a04f2b885aef19508d/5D3BD35C/t51.2885-15/sh0.08/e35/s750x750/56702425_801507206901730_3292434414275977420_n.jpg?_nc_ht=scontent-sin2-1.cdninstagram.com&_nc_cat=110 750w,https://scontent-sin2-1.cdninstagram.com/vp/d7c397d5d585345f23858aa0fca6f035/5D66DFB9/t51.2885-15/e35/56702425_801507206901730_3292434414275977420_n.jpg?_nc_ht=scontent-sin2-1.cdninstagram.com&_nc_cat=110 1080w"),
        ),
        // Bottom Command
        Divider(
          height: 1.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.add_comment),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.near_me),
                  ),
                ],
              ),
            ),
            Icon(Icons.bookmark_border)
          ],
        ),
        Divider(height: 1.0,),
        // Likes Counter
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(3),
              child: Text("2,318 likes",style: TextStyle(fontWeight: FontWeight.bold))),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(3),
              child: Row(
                children: <Widget>[
                  Text("daho.__ ",style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Wiw keren banget sih aa kaya beginih")                  
                ],
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1),
              child: Text("View all 38 comments",style: TextStyle(color: Colors.grey),),
            )
          ],
        )
      ],
    );
  }
}
