import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/anorectum_content/changes_pecctinate_line.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class InteriorAnoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Interior of anorectum",
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
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Interior of rectum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Four transverse mucosal folds - inconsistent",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "First and third - towards left",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Second and fourth - towards right",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Interior of anal canal",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anal columns of Morgagni",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anal valves",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pectinate line",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anal sinuses or crypts",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anal ducts",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anal columns of Morgagni",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Permanent mucosal folds with underlying parallel bundles of muscularis",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anal valves",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano11,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Crescent shaped folds connecting lower ends of anal columns",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pectinate line (dentate line)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano12,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Pectinate line is the position of anal valves",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anal sinuses or crypts",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano13,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Pockets formed by the anal valves",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anal ducts",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Downward and outward running small ducts from anal sinuses on the posterior rectal wall",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anal papillae",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Downward and outward running small ducts from anal sinuses on the posterior rectal wall",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pectinate line, dentate line, Hilton's line and mucocutaneous line",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano14,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Pectinate line = dentate line",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Formed by the margins of anal valves",
          ),
        ),
        ListTile(
          title: new Text(
            "Hilton's line = Mucocutaneous line",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mucocutaneous junction of stratified squamous and columnar epithelium",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Rectal Neck",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano15,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "a. Internal rectal sphincter",
          ),
        ),
        ListTile(
          title: new Text(
            "b. Longitudinal rectal muscle",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Part of the rectum extending downwards from the level of the levator plate to the perineal skin",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Rectal neck therefore represents that portion of the bowel usually referred to as the \"anal canal\"",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Part of the rectum above this is rectum proper",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "External anal sphincter",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano16,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "The three loops of the external anal sphincter",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Subcutaneous (C)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superficial (B)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Deep (A)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Transverse rectal folds - Houston's valves",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano18,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Semilunar transverse folds of the rectal wall",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Protrude into the lumen",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Usually three in number; fourth may be present",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "First and third are towards – right",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Second and fourth are to left",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Development of anorectum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Above pectinate line – from hindgut",
          ),
        ),
        ListTile(
          title: new Text(
            "Below pectinate line – from proctodeum",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anal sphincter is airtight!",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The internal sphincter does not close the canal completely",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The gap (approximately 7 mm) is sealed by the distensible, vascular subepithelial tissues",
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
                CupertinoPageRoute(builder: (context) => ChangesAnoPage()))
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
