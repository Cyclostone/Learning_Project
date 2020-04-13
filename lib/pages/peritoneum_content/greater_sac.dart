import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/peritoneum_content/lesser_sac.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class GreaterSacPeriPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Greater sac",
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
            "Divisions",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri26,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Transverse mesocolon divides the greater sac into",
          ),
        ),
        ListTile(
          title: new Text("Supracolic compartment",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Above the attachment of transverse mesocolon",
          ),
        ),
        ListTile(
          title: new Text("Infracolic compartment",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Below the attachment of transverse mesocolon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The line of attachment of the mesentery divides the infracolic compartment into right and left spaces",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Right and left paracolic gutters",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri27,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text("Right paracolic gutter",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "lateral to ascending colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "continuous with hepatorenal pouch",
          ),
        ),
        ListTile(
          title: new Text("Left paracolic gutter",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "lateral to descending colon",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Hepatorenal pouch of Morrison",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri28,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri29,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Space between right lobe of the liver and right kidney",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Most dependent portions of the peritoneal cavity in supine position",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Communications",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Above – communicates with right subhepatic space",
          ),
        ),
        ListTile(
          title: new Text(
            "Below – continues with right paracolic gutter",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Clinical significance",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri30,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "As it is the most dependant part in the supine position, any pus or blood in the peritoneal cavity tends to gravitate to the hepatorenal pouch",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Routinely a drain is placed here to drain the collections post-operatively",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hepatorenal pouch collections can irritate the diaphragm",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Rectouterine pouch (Pouch of Douglas)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri31,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pouch of peritoneum situated between the rectum and uterus (in females)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Most dependant part of peritoneal cavity in upright position",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Boundaries",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly: uterus and upper part of vagina",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posteriorly: rectum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly: rectovaginal fold of peritoneum",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Clinical significance",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri32,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "As it is most dependant portion of peritoneal cavity – any pus tends to collect here",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Forms pelvic abscess",
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
                CupertinoPageRoute(builder: (context) => LesserSacPeriPage()))
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
