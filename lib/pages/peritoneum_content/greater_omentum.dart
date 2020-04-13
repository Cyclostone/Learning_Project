import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/peritoneum_content/lesser_omentum.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class GreaterOmePeriPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Greater omentum",
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
            "Greater omentum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri3,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Fold of peritoneum attached to stomach on its greater curvature",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Milky spots",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Aggregation of macrophages",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Abdominal policeman",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Adheres to the site of inflammation",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Seals of the insulting factor",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Protection",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Greater omentum seals off infection",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri41,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Brutality",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Provides easy pathway for spread of carcinoma",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Developmental changes in greater omentum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri4,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "During ‘fixation’ stage of gut development",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posterior two layers of peritoneum attached to the stomach fuses with the two layers of vascular transverse mesocolon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anterior two layers and posterior two layers of peritoneum attached to the stomach fuses",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Obliterates the omental bursa (lesser sac) within this fused future greater omentum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anterior to the transverse mesocolon and below the greater curvature of the stomach, fused four layers of greater omentum fuse with two layers of transverse mesocolon (forms 6 layers)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Arterial supply of greater omentum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri5,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right gastroepiploic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right epiploic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left gastroepiploic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left epiploic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posterior epiploic branches",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Branches from vasa recta",
          ),
        ),
        ListTile(
          title: new Text(
            "Arc of Barkow",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anastomosis of the right gastroepiploic and left gastroepiploic arteries",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Omentoplasty",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri6,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Procedure of using greater omentum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "To cover or fill a defect,",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "To augment arterial or portal venous circulation",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "To absorb effusions",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "To increase lymphatic drainage",
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
                CupertinoPageRoute(builder: (context) => LesserOmePeriPage()))
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
