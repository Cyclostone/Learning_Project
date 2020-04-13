import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/anorectum_content/blood_supply.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class ChangesAnoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Changes at pectinate line",
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
        //     "Interior of rectum",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano21,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Description",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Below pectinate line",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Above pectinate line",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Origin"),
              new Text("Ectoderm (proctodeum)"),
              new Text("Endoderm (hindgut)"),
            ]),
            TableRow(children: [
              new Text("Lining epithelium"),
              new Text("Stratified squamous epithelium"),
              new Text("Simple columnar epithelium"),
            ]),
            TableRow(children: [
              new Text("Arterial supply"),
              new Text("Inferior rectal artery"),
              new Text("Superior rectal artery"),
            ]),
            TableRow(children: [
              new Text("Venous drainage"),
              new Text("Inferior rectal vein (into the inferior vena cava)"),
              new Text("Superior rectal vein (into portal vein)"),
            ]),
            TableRow(children: [
              new Text("Lymphatic drainage"),
              new Text("To inguinal group of nodes"),
              new Text("To pelvic and lumbar nodes"),
            ]),
            TableRow(children: [
              new Text("Nerve supply"),
              new Text("Inferior rectal nerves (somatic)"),
              new Text("Autonomic nerves (visceral)"),
            ]),
            TableRow(children: [
              new Text("Physiology"),
              new Text("Good localization of sensations"),
              new Text("Poor localization of sensations"),
            ]),
            TableRow(children: [
              new Text("Cancer"),
              new Text("Squamous cell carcinoma"),
              new Text("Adenocarcinoma"),
            ]),
            TableRow(children: [
              new Text("Varices"),
              new Text("External hemorrhoids"),
              new Text("Internal hemorrhoids"),
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
                CupertinoPageRoute(builder: (context) => BloodAnoPage()))
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
