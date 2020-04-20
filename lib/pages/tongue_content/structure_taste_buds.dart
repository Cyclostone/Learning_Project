import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/tongue_content/taste_pathway.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class StructTasteBudsTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Structure of taste buds and taste categories",
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
            "Cells",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gustatory cells are the taste receptor cells",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Supporting cells support the gustatory cells",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Five taste categories",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue26,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "salty",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "sour",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "sweet",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "bitter",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "umami",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Location on the tongue",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue27,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "No regional specification exists",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "All the regions of the dorsum of the tongue can detect these five tastes",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Implication in daily life",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Taste of the food",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue28,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Salty, bitter, spicy, sweet are perceived by facial nerve and glossopharyngeal nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "Form of the food",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue29,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hard/ soft / granular / liquid / solid / paste / sticky  (idlis / dosa / ghee / chapati / halwa )",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Warm/ cold/frozen/chilled (ice-cream, candy, softies)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "are perceived by lingual nerve and glossopharyngeal nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "tablets / medication placed in the",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "anterior portion - taste by facial nerve",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Posterior portion – taste by glossopharyngeal nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "If it touches the walls of the oropharynx – possibility of gag reflex is there",
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
                    builder: (context) => TastePathwayTonguePage()))
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
