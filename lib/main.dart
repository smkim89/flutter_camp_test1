import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Layout')
      ),
      body: ListView(
        children: <Widget>[
          _buildImgSection(),
          _buildTitleSection(),
          _buildButtonSection(),
          _buildDescriptionSection()
        ],
      ),
    );
  }

  _buildImgSection () {
    return Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Classic_view_of_a_cloudfree_Peyto_Lake%2C_Banff_National_Park%2C_Alberta%2C_Canada_%284110933448%29.jpg/330px-Classic_view_of_a_cloudfree_Peyto_Lake%2C_Banff_National_Park%2C_Alberta%2C_Canada_%284110933448%29.jpg');
  }

  _buildTitleSection () {
    return Container(
      //margin 설정을 하기위해 컨테이너를 감싸준다.
      margin: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Lake CampGround', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              Text('Sub Title', style: TextStyle(color: Colors.grey, fontSize: 15)),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.red),
              Text('41'),
            ],
          )
        ],
      ),
    );
  }

  _buildButtonSection () {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildImgIcons('CALL', Icons.call, Colors.blue),
          _buildImgIcons('ROUTE', Icons.near_me, Colors.blue),
          _buildImgIcons('SHARE', Icons.share, Colors.blue),
        ],
      ),
    );
  }

  _buildDescriptionSection () {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text('A retired soldier who served his country for 30 years but died in a nursing home with no friends or relatives was given a hero’s send off by hundreds of people who came to pay their respects.'),
    );
  }


  _buildImgIcons (String name, IconData iconData, MaterialColor colors) {

    return Column(
      children: <Widget>[
        Icon(iconData, color: colors),
        Text(name, style: TextStyle(color: colors),),
      ],
    );
  }
}
