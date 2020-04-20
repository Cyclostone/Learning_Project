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
import 'package:learning_platform_app/pages/pharynx_content/nasopharynx.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class BloodSupplyPharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood Supply, Lymphatic Drainage and Nerve Supply",
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
            "Blood Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx14,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "From the External Carotid Artery & its branches",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "1) Tonsillar artery (from Facial Artery)",
          ),
        ),
        ListTile(
          title: new Text(
            "2) Ascending palatine artery (from Facial Artery)",
          ),
        ),
        ListTile(
          title: new Text(
            "3) Ascending pharyngeal Artery (from external carotid)",
          ),
        ),
        ListTile(
          title: new Text(
            "4) Descending palatine artery (from Maxillary artery)",
          ),
        ),
        ListTile(
          title: new Text(
            "5) Dorsalis lingual artery (from Lingual artery)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic Drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx15,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nasopharynx --> Retropharyngeal --> upper deep cervical lymph nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Oropharynx --> upper deep cervical lymph nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hypopharynx --> upper deep cervical lymph nodes",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nerve Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx16,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Motor",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "All muscles are supplied by pharyngeal plexus except stylopharyngeus that is directly supplied by glossopharyngeal nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "Sensory",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Nasopharynx: V",
          ),
        ),
        ListTile(
          title: new Text(
            "Oropharynx: IX",
          ),
        ),
        ListTile(
          title: new Text(
            "Laryngopharynx: X",
          ),
        ),
        ListTile(
          title: new Text(
            "Autonomic",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Sympathetic: superior cervical ganglion",
          ),
        ),
        ListTile(
          title: new Text(
            "Parasympathetic: through VII",
          ),
        ),
        ListTile(
          title: new Text(
            "Pharyngeal plexus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pharyngeal branch of vagus nerve – carrying cranial part of accessory nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pharyngeal branch of glossopharyngeal nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sympathetic branches from superior cervical ganglion",
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
                CupertinoPageRoute(builder: (context) => NasoPharynxPage()))
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
