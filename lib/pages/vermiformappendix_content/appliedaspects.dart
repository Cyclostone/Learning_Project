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

class AppAspVAPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Applied Aspects",
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
        // Positioned(
        //   right: 8.0,
        //   top: 60.0,
        //   child: InkWell(
        //     onTap: () {
        //       Navigator.push(
        //           context,
        //           CupertinoPageRoute(
        //               builder: (context) => ListPage(
        //                     title: 'ANATOMY OF ABDOMEN',
        //                   )));
        //     },
        //     child: Icon(Icons.home, color: Colors.white),
        //   ),
        // )
      ],
    );

    final bottomContentText = Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Congenital anomalies",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.va20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Absence of the Appendix",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Ectopic Appendix",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "subhepatic appendix",
          ),
        ),
        ListTile(
          title: new Text(
            "Left-Sided Appendix",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "associated with situs inversus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "malrotation of midgut loop",
          ),
        ),
        ListTile(
          title: new Text(
            "Duplication of the Appendix",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "only the tip may be bifid",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "two appendices may be attached to a cecum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "cecum and appendix may be duplicated",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Appendicular pathology",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.va21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Inflammation of appendix",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Surgical Applications",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.va22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "cecum should be identified first",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "one of the taeniae coli should be traced downward to the base of the appendix",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The base of appendix always arises from the cecum at the convergence of the taeniae",
          ),
        ),
        ListTile(
          title: new Text(
            "Right psoas muscle test",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.va23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Forced extension of the right thigh \n\nincreased pain in the RLQ of the abdomen when the inflamed appendix rest on the peritoneum which covers the right major psoas muscle",
          ),
        ),
        ListTile(
          title: new Text(
            "Right obturator muscle test",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.va24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Flexion and lateral rotation of the right thigh \n\npain in the RLQ and right pelvic area when the inflamed appendix is closely related to the obturator internus muscle",
          ),
        ),
        ListTile(
          title: new Text(
            "Rebound tenderness",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.va25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "= Blumberg sign",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "represents pain from peritoneum by stretching or moving",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "In acute appendicitis – it indicates spread of inflammation from appendix to peritoneum",
          ),
        ),
        ListTile(
          title: new Text(
            "Appendectomy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Removal of appendix",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Open appendectomy",
          ),
        ),
        ListTile(
          title: new Text(
            "https://www.youtube.com/watch?v=vfBHK6L0afw",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Laparoscopic appendectomy",
          ),
        ),
        ListTile(
          title: new Text(
            "https://www.youtube.com/watch?v=oS9NfoTpT3c",
          ),
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
