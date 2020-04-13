import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/peritoneum_content/the_mesentry.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class LesserOmePeriPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Lesser omentum",
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
            "Shape and extension",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri42,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "L Shaped fold of peritoneum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Extends between liver and lesser curvature of stomach",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Derived from part of ventral mesogastrium between liver and stomach",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Short base of ‘L’ is attached to liver",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Attachments",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Superior attachment – to liver",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "To margins of porta hepatis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Margins of fissure for ligamentum venosum",
          ),
        ),
        ListTile(
          title: new Text(
            "Inferior attachment – to foregut",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "lesser curvature of stomach (hepatogastric ligament)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "to abdominal esophagus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "to first part of duodenum (hepatoduodenal ligament)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Right free margin",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Hepatoduodenal ligament forms the right free margin of lesser omentum",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Contents of right free margin of lesser omentum are",
          ),
        ),
        ListTile(
          title: new Text(
            "1.portal vein (posteriorly)",
          ),
        ),
        ListTile(
          title: new Text(
            "2.hepatic duct",
          ),
        ),
        ListTile(
          title: new Text(
            "3.hepatic artery",
          ),
        ),
        ListTile(
          title: new Text(
            "4.lymphatics and autonomic nerves",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Structures present within the lesser curvature in relation to lesser curvature of stomach",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.peri9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "1. left gastric vessels",
          ),
        ),
        ListTile(
          title: new Text(
            "2. right gastric vessels",
          ),
        ),
        ListTile(
          title: new Text(
            "3. branches of anterior and posterior vagus nerves",
          ),
        ),
        ListTile(
          title: new Text(
            "4. gastric lymph nodes",
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
                CupertinoPageRoute(builder: (context) => MesPeriPage()))
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
