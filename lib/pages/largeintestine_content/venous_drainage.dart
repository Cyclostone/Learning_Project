import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/largeintestine_content/applied_aspects_lg.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class VenLGPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Venous drainage, Lymphatic supply and Nerve Supply",
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
          height: MediaQuery.of(context).size.height * 0.29,
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
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Venous drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg39,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Cecum, ascending colon, and right transverse colon",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Superior mesenteric vein",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text(
                  "Hepatic flexure and the right portion of the transverse colon"),
              new Text(
                  "Gastroepiploic vein Or Anterior superior pancreaticoduodenal vein"),
            ]),
            TableRow(children: [
              new Text("Left portion of the transverse colon"),
              new Text("Superior mesenteric vein"),
            ]),
            TableRow(children: [
              new Text("Descending and sigmoid colons"),
              new Text(
                  "Superior rectal vein Passes up and form the inferior mesenteric vein"),
            ]),
            TableRow(children: [
              new Text("Rectum"),
              new Text("Superior rectal vein"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic Drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lymph flow follows the arteries",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Four groups",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg40,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Epicolic",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Under the serosa of the wall of the intestine",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Paracolic"),
              new Text("On the marginal artery"),
            ]),
            TableRow(children: [
              new Text("Intermediate"),
              new Text("Along the large arteries – SMA and IMA"),
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text(
                      "Principal"),
                  ListTile(
                    leading: new MyBullet(),
                    title: new Text(
                      "Mesenteric root nodes",
                    ),
                  ),
                  ListTile(
                    leading: MyBullet(),
                    title: new Text(
                      "Aortic nodes",
                    ),
                  ),
                  ListTile(
                    leading: new MyBullet(),
                    title: new Text(
                      "Left lumbar nodes",
                    ),
                  ),
                ],
              ),
              new Text("At the root of SMA and IMA"),
            ]),
          ],
        ),
        ListTile(
          title: new Text(
            "Lymphatic drainage of sigmoid colon, rectum, and anus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg41,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Above pectinate line",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("drainage is to inferior mesenteric nodes",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Below the pectinate line"),
              new Text("inguinal nodes"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nerve Supply Of Colon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.lg33,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        ListTile(
          title: new Text(
            "Sympathetic Innervation",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right colon originates from the lower six thoracic segments",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left colon from first two (or three) lumbar segments of the cord travelling along aortic plexus and the inferior mesenteric plexus",
          ),
        ),
        ListTile(
          title: new Text(
            "Parasympathetic Innervation",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Upto right 2/3rd of transverse colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vagus nerve.",
          ),
        ),
        ListTile(
          title: new Text(
            "Left colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "pelvic splanchnic nerves (S2, S3 and S4)",
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
                CupertinoPageRoute(builder: (context) => AppAsp2LGPage()))
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
