import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/form_page.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/palate_content/definition_parts.dart';
import 'package:learning_platform_app/pages/palate_content/index.dart';
import 'package:learning_platform_app/pages/pancreas_content/etymo_parts.dart';
import 'package:learning_platform_app/pages/pancreas_content/index.dart';
import 'package:learning_platform_app/pages/peritoneum_content/definition.dart';
import 'package:learning_platform_app/pages/peritoneum_content/index.dart';
import 'package:learning_platform_app/pages/pharynx_content/index.dart';
import 'package:learning_platform_app/pages/pharynx_content/terminology.dart';
import 'package:learning_platform_app/pages/process_content/index.dart';
import 'package:learning_platform_app/pages/process_content/steps.dart';
import 'package:learning_platform_app/pages/stomach_content/index.dart';
import 'package:learning_platform_app/pages/stomach_content/introduction.dart';
import 'package:learning_platform_app/pages/tongue_content/index.dart';
import 'package:learning_platform_app/pages/tongue_content/parts.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/index.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/intro.dart';

import 'anorectum_content/definition.dart';
import 'anorectum_content/index.dart';
import 'duodenum_content/index.dart';
import 'duodenum_content/introduction_etymology.dart';
import 'esophagus_content/index.dart';
import 'esophagus_content/introduction.dart';
import 'jejunum_ileum_content/index.dart';
import 'jejunum_ileum_content/terminology.dart';
import 'largeintestine_content/index.dart';
import 'largeintestine_content/parts.dart';
import 'liver_content/etymology_location_size_movement.dart';
import 'liver_content/index.dart';
import 'oralCavity_content/boundaries.dart';
import 'oralCavity_content/index.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Anatomy Of Abdomen"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 55.0,
        child: BottomAppBar(
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.blur_on, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.hotel, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_box, color: Colors.white),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Anorectum",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => AnoDetailPage(
                                          title: 'Anorectum',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Duodenum",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => DuoDetailPage(
                                          title: 'Duodenum',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Esophagus",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => EsoDetailPage(
                                          title: 'Esophagus',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Jejunum and Ileum",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => JIDetailPage(
                                          title: "Jejunum and Ileum",
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Large Intestine",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => LIDetailPage(
                                          title: "Large Intestine",
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Liver",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => LiverDetailPage(
                                          title: 'Liver',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Oral Cavity",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => OCDetailPage(
                                          title: 'Oral Cavity',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Palate",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => PalateDetailPage(
                                          title: 'Palate',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Pancreas",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => PancreasDetailPage(
                                          title: 'Pancreas',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Peritoneum and Mesentery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => PeriDetailPage(
                                          title: 'Peritoneum and Mesentery',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Pharynx",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => PharynxDetailPage(
                                          title: 'Pharynx',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Process of Digestion",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => ProcessDetailPage(
                                          title: 'Process of Digestion',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Stomach",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => StomachDetailPage(
                                          title: 'Stomach',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Tongue",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => TongueDetailPage(
                                          title: 'Tongue',
                                        )));
                          }),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8.0,
                margin:
                    new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                  child: Column(
                    children: [
                      ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                            padding: EdgeInsets.only(right: 12.0),
                            decoration: new BoxDecoration(
                                border: new Border(
                                    right: new BorderSide(
                                        width: 1.0, color: Colors.white24))),
                            child: Icon(Icons.autorenew, color: Colors.white),
                          ),
                          title: Text(
                            "Vermiform Appendix",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Colors.white, size: 30.0),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => VADetailPage(
                                        title: 'Vermiform Appendix')));
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
