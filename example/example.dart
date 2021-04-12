import 'package:date_time_picker_tr/date_time_picker_tr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DateTime Picker Desktop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(
        title: 'DateTime Picker Desktop',
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final String title;
  HomeScreen({
    Key key,
    this.title,
  }) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DatePicker(
              maxDate: DateTime.parse('2020-10-13'),
              minDate: DateTime.parse('1980-10-13'),
              initialDate: DateTime.parse('2019-09-30'),
              onChangedDate: (dateTime) => print(dateTime),
              overlayColor: Colors.grey,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              height: 300.0,
              width: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
