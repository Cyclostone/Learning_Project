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
import 'package:learning_platform_app/pages/pharynx_content/interesting_facts.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class SpacesPharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Spaces associated with pharynx",
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
            "Parapharyngeal Space",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx64,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inverted pyramid shaped space",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Extending from the skull base upto the hyoid bone",
          ),
        ),
        ListTile(
          title: new Text(
            "Boundaries",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superiorly: base of skull",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly: greater cornu of hyoid bone",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Medially: Pretracheal part of deep cervical fascia",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Laterally: fascia covering parotid gland",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly: fascia covering medial pterygoid muscle",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posteriorly: prevertebral layer fascia",
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Lymphatic Drainage",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        ListTile(
          title: new Text(
            "Important contents",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Maxillary artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pterygoid venous plexus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nerve to tensor veli palatini",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Minor salivary glands",
          ),
        ),
        ListTile(
          title: new Text(
            "Applied aspects",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Parapharyngeal space has direct connection with all six deep compartments of head and neck except danger space",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Danger space is separated from parapharyngeal space by retropharyngeal space",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Retropharyngeal space",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx65,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Radiologically",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "space between visceral compartment and prevertebral fascia",
          ),
        ),
        ListTile(
          title: new Text(
            "Anatomically",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "This space is divided into two by alar fascia. \nAnterior space – true retropharyngeal space and posterior danger zone or prevertebral space",
          ),
        ),
        ListTile(
          title: new Text(
            "Boundaries",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly: deep cervical fascia",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posteriorly: alar fascia",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superiorly: clivus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly: extends upto T4",
          ),
        ),
        ListTile(
          title: new Text(
            "Applied aspects",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is in direct contact with danger space",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Danger space",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx66,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Space posterior to retropharyngeal space",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is the potential path of spread of infections and cancer from pharynx to mediastinum",
          ),
        ),
        ListTile(
          title: new Text(
            "Boundaries",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly: alar fascia",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posteriorly: prevertebral layer of the deep cervical fascia",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superiorly: clivus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly: posterior mediastinum at the level of the diaphragm",
          ),
        ),
        ListTile(
          title: new Text(
            "Peripharyngeal space",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Parapharyngeal space + retropharyngeal space",
          ),
        ),
        ListTile(
          title: new Text(
            "Retrovisceral space",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Retropharyngeal space + danger space",
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
                    builder: (context) => InterestingFactsPharynxPage()))
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
