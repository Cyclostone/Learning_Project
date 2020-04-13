import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/anorectum_content/defecation_continence.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class BloodAnoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood supply, nerve supply and lymphatic drainage of anorectum",
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
          height: MediaQuery.of(context).size.height * 0.34,
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
            "Arterial supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "1. Superior rectal (hemorrhoidal) artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Arises from the inferior mesenteric artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Unpaired",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Descends to the posterior wall of the upper rectum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Supplying the posterior wall",
          ),
        ),
        ListTile(
          title: new Text(
            "2. Middle rectal (hemorrhoidal) arteries",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Arise from internal iliac artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Numbers vary from 3-9",
          ),
        ),
        ListTile(
          title: new Text(
            "3. Inferior rectal (hemorrhoidal) arteries",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Arise from the internal pudendal arteries",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anal canal distal to the pectinate line",
          ),
        ),
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
            Images.ano23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Superior rectal veins",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drains into inferior mesenteric vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Part of portal system",
          ),
        ),
        ListTile(
          title: new Text(
            "Middle and inferior rectal veins",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drains into internal iliac veins",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Part of caval system",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano24,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Two extramural plexuses",
            style: TextStyle(fontSize: 15.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Watershed line at pectinate line",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Above pectinate line",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drains to posterior rectal nodes to a chain of nodes along the superior rectal artery to the pelvic nodes",
          ),
        ),
        ListTile(
          title: new Text(
            "Below pectinate line",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drains to the inguinal nodes",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Intramural lymphatics",
            style: TextStyle(fontSize: 15.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Watershed line at middle rectal valve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Above middle rectal valve lymphatics drain upwards to pelvic nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Below the middle rectal valve lymphatics drain downwards to inguinal nodes",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Innervation",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Internal rectal sphincter",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "motor -> sympathetic fibers -> contraction",
          ),
        ),
        ListTile(
          title: new Text(
            "Lower rectal wall",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "pelvic splanchnic nerve (parasympathetic) and the hypogastric nerve (sympathetic)",
          ),
        ),
        ListTile(
          title: new Text(
            "Levator ani muscles",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "third and the fourth sacral nerves",
          ),
        ),
        ListTile(
          title: new Text(
            "Parasympathetic fibers",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "pelvic splanchnic nerves -> inhibit contraction",
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
                CupertinoPageRoute(builder: (context) => DefeAnoPage()))
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
