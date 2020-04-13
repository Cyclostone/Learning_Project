import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class AppAspectsAnoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Applied aspects",
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
            "Digital per rectal examination",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano29,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Gives access to rectum, the anus, the prostate, the seminal vesicles, the bladder, and the perineum",
          ),
        ),
        ListTile(
          title: new Text(
            "A. Distal interphalangeal joint at the anal verge. \n(Hemorrhoids can be detected at this stage)",
          ),
        ),
        ListTile(
          title: new Text(
            "B. Middle interphalangeal joint at the anal verge",
          ),
        ),
        ListTile(
          title: new Text(
            "C. Metacarpophalangeal joint at the anal verge",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Proctoscopy",
            style: TextStyle(fontSize: 15.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Internal hemorrhoids in internal proctoscopy",
          ),
        ),
        ListTile(
          title: new Text(
            "https://www.youtube.com/watch?v=aFc4zYzI1MU",
          ),
        ),
        ListTile(
          title: new Text(
            "Proctoscope used to examine the anal cavity, rectum, or sigmoid colon",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anal fistulas",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano30,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano31,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Chronic abnormal communication between the epithelialised surface of the anal canal and usually the perianal skin",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "A common ailment among general population",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "However, piles and fistula clinics are more common!",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Haemorrhoids (Piles)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano32,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Enlarged and inflamed veins in the rectum and anus that cause discomfort and bleeding",
          ),
        ),
        ListTile(
          title: new Text(
            "Internal haemorrhoids",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Above pectinate line",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Painless bleeding",
          ),
        ),
        ListTile(
          title: new Text(
            "External haemorrhoids",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Below pectinate line",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Painful bleeding",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Perianal lymphatic drainage and Goodsall's rule",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano33,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Fistulas with an external (secondary) opening situated posterior to an imaginary line passing transversely through the center of the anus usually have the internal (primary) opening in the midline and posteriorly, so that the tract is curved",
          ),
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) =>
                        ListPage(title: 'ANATOMY OF ABDOMEN')))
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
