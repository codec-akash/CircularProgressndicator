import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CircularProgress-Indicator',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        primaryColor: Colors.blueAccent,
        accentColor: Colors.amberAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular progress Indicator'),
      ),
      body: Container(
        child: Center(
          child: _loading
              ? CircularProgressIndicator()
              : RaisedButton(
                  child: Text('Click'),
                  onPressed: () async {
                    setState(() {
                      _loading = true;
                    });
                    await Future.delayed(Duration(seconds: 3));
                    setState(() {
                      _loading = false;
                    });
                  },
                ),
        ),
      ),
    );
  }
}
