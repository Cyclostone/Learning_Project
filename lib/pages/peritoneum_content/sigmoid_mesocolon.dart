import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/peritoneum_content/greater_sac.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class SigPeriPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Sigmoid mesocolon and Peritoneal Cavity",
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
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Sigmoid Mesocolon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mesentery of sigmoid colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inverted V shaped attachment",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Has two limbs",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left limb - attachment related to external iliac artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right limb - attachment related to sacrum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "At the apex the attachment is related to left ureter",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Peritoneal cavity",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri18,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Potential space between parietal and serous peritoneum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Largest serous sac in the body",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Differences – male and female",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Male – it is closed sac",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Female –communicates outside as the fimbrial ends of fallopian tubes are open",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Subdivisions",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "1. Greater sac",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Main compartment of the peritoneal cavity",
          ),
        ),
        ListTile(
          title: new Text(
            "2. Lesser sac",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Smaller compartment of peritoneal cavity behind the stomach",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ascites - Peritoneal effusion",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri21,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Collection of fluid within the abdominal cavity",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ascitic tapping",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Procedure where a needle is used to drain fluid from abdominal cavity",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Peritoneal dialysis",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Continuous flow peritoneal dialysis (CFPD)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "technique of renal replacement therapy",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "catheter is implanted into the peritoneal cavity",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "the dialysis fluid fills the peritoneal cavity",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Diffusion of waste occur across the peritoneal membrane",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "After a specified time the peritoneal fluid is drained from the cavity",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Laparoscopic surgery",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Animation: https://www.youtube.com/watch?v=BsCssx4nsiQ",
          ),
        ),
        ListTile(
          title: new Text(
            "Surgery: https://youtu.be/GzUHYH719sE",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "keyhole surgery of abdomen",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "camera (laparoscope), light source, instruments are inserted into the peritoneal cavity",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "cavity is inflated with gas",
          ),
        ),
        ListTile(
          title: new Text(
            "Many surgical procedures are carried out",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Appendectomy",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cholecystectomy",
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
                CupertinoPageRoute(builder: (context) => GreaterSacPeriPage()))
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
