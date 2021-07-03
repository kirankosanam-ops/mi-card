import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 100.0,
            backgroundImage: AssetImage('images/me.png'),
          ),
          Text(
            'Kiran Kosanam',
            style: TextStyle(
                fontFamily: 'GreatVibes',
                color: Colors.white,
                fontSize: 40.0),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.white,
                fontSize: 13.0),
          ),
          SizedBox(
            child: Divider(
              color: Colors.teal.shade300,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                  size: 24.0,
                ),
                title: Text(
                  '+91 832 853 9419',
                  style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                  size: 24.0,
                ),
                title: Text(
                  'kirankosanam1@gmail.com',
                  style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
