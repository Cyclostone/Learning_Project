import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/external_features.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class LobesLiverPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Lobes of Liver",
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
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver6,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver7,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Anatomical lobes",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Falciform ligament divides liver into -",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right lobe - large lobe on the right side of falciform ligament",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left lobe - small lobe on the left side of falciform ligament",
          ),
        ),
        ListTile(
          title: new Text(
            "Viewed from inferior surface -",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Caudate lobe",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Quadrate lobe",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Functional Lobes",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "By Cystocaval line - Cantlie line",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Liver is divided into equal right and left lobes by a line joining gall bladder and inferior vena cava.",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Right Lobe",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly - on the right side of falciform ligament",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly and posteriorly - on the right side of ligamentum venosum and ligamentum teres",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Middle hepatic vein separates right lobe and left lobe functionally",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Roughly six times larger than left lobe",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Occupies right hypochondrium",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Left Lobe",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Small and flat",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located in epigastrium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superiorly related to diaphragm",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly related to stomach",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Quadrate Lobe",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver11,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Boundaries:",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anterior - inferior border of liver",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "posterior - porta hepatis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right side - fossa for gallbladder",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left side - Ligamentum teres",
          ),
        ),
        ListTile(
          title: new Text(
            "Quadrate lobe is Couinaud segment IVb",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Caudate Lobe",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver12,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Synonyms",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "posterior hepatic segment, Spigelian lobe",
          ),
        ),
        ListTile(
          title: new Text(
            "Location",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Postero-superior aspect of right lobe of liver",
          ),
        ),
        ListTile(
          title: new Text(
            "Boundaries",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferior - porta hepatis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right - fossa for inferior vena cava",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left - ligamentum venosum",
          ),
        ),
        ListTile(
          title: new Text(
            "Remember: Blood from caudate lobe drains directly into the inferior vena cava",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Couinaud’s Classification",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver13,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver14,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Couinaud's classification",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Division of liver into 8 segments based on vascular inflow, outflow and bile drainage",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Each Couinaud's segment has its own branch of portal vein, hepatic artery and bile duct in the center.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Each Couinaud's segment is drained by a tributary of hepatic vein in the periphery",
          ),
        ),
        ListTile(
          title: new Text(
            "Numbering of the segments",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          title: new Text(
            "Numbering of the segments is in clockwise manner",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 1 - located posteriorly. Caudate lobe is segment 1",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 2 - in the upper part of left lobe ",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 3 - in lower part of left lobe",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 4 - On the left of middle hepatic vein (in anatomical right lobe; physiological left lobe)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 5 - in lower part of right lobe (anterior aspect)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 6 - in lower part of right lobe (posterior aspect)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 7 - in upper part of right lobe (posterior aspect)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Segment 8 - in upper part of right lobe (anterior aspect)",
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
                CupertinoPageRoute(builder: (context) => ExterLiverPage()))
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
