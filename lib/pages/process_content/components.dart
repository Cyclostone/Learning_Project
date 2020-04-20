import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

import '../../form_page.dart';

class CompProcessPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Components of digestive system",
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
          height: MediaQuery.of(context).size.height * 0.24,
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
      ],
    );

    final bottomContentText = Column(
      children: <Widget>[
        ListTile(
          title: new Text(
            "1.GI tract",
          ),
        ),
        ListTile(
          title: new Text(
            "2.Accessory organs of digestion",
          ),
        ),
        ListTile(
          title: new Text(
            "3.Arteries and veins",
          ),
        ),
        ListTile(
          title: new Text(
            "4.Abdominal cavity, peritoneum, mesenteries",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pro20,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Quick snippets",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pro21,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pro22,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Routine procedures to visualize the parts of GIT",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "(Detailed investigations are discussed with each part of digestive system)",
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Part", style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Routinely used technique",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Oral cavity"),
              new Text("Clinical examination"),
            ]),
            TableRow(children: [
              new Text("Pharynx"),
              new Text("Clinical examination"),
            ]),
            TableRow(children: [
              new Text("Esophagus, stomach, duodenum"),
              new Text("Upper GI endoscopy"),
            ]),
            TableRow(children: [
              new Text("Ileum, jejunum"),
              new Text(""),
            ]),
            TableRow(children: [
              new Text("Cecum and appendix"),
              new Text(""),
            ]),
            TableRow(children: [
              new Text("Ascending, transverse, descending colon, rectum"),
              new Text("Lower GI endoscopy"),
            ]),
            TableRow(children: [
              new Text("Anal canal"),
              new Text("Digital rectal examination"),
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
                CupertinoPageRoute(builder: (context) => HomeMaterial()))
          },
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Text("Finish", style: TextStyle(color: Colors.white)),
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
