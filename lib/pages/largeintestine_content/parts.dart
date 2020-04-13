import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/largeintestine_content/cecum&ileocecalvalve.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class PartsLGPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Parts",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        Positioned(
          right: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => ListPage(
                            title: 'ANATOMY OF ABDOMEN',
                          )));
            },
            child: Icon(Icons.home, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText = Column(
      children: <Widget>[
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Arterial Supply",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg1,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cecum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vermiform appendix",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ascending colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hepatic flexure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Transverse colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Splenic flexure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Descending colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sigmoid colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anorectum",
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Intraperitoneal",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Fold of peritoneum suspending",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Retroperitoneal",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            TableRow(children: [
              new Text("Appendix"),
              new Text("Mesoappendix"),
              new Text("Ascending colon"),
            ]),
            TableRow(children: [
              new Text("Cecum"),
              new Text("Ileocecal fold"),
              new Text("Descending colon"),
            ]),
            TableRow(children: [
              new Text("Transverse colon"),
              new Text("Transverse mesocolon"),
              new Text(""),
            ]),
            TableRow(children: [
              new Text("Sigmoid colon"),
              new Text("Sigmoid mesocolon"),
              new Text(""),
            ]),
          ],
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => CecumLGPage()))
          },
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Text("Next", style: TextStyle(color: Colors.white)),
        ));
    final bottomContent = Container(
      // color: Colors.teal,
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.topCenter,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Container(
            //   padding: EdgeInsets.all(10),
            //   child: Text(
            //     "Introduction",
            //     style: TextStyle(
            //       fontSize: 30.0,
            //     ),
            //   ),
            // ),
            SizedBox(height: 20),
            bottomContentText,
            SizedBox(height: 20),
            readButton,
          ],
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            topContent,
            Container(
              color: Colors.red,
            ),
            bottomContent
          ],
        ),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 20.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
