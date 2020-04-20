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
import 'package:learning_platform_app/pages/tongue_content/structure_taste_buds.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class DevTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Development of tongue and Developmental anomalies",
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
          height: MediaQuery.of(context).size.height * 0.34,
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
            "Development of anterior two third of the tongue",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "From lateral lingual swellings and median tuberculum impar",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Develops in relation to floor of first pharyngeal arch",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nerve supply",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Lingual nerve (1st arch)",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Chorda tympani (pretrematic branch of facial nerve)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Development of posterior one third of the tongue and circumvallate papillae",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "From Ventral part of hypobranchial eminence",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Develops in relation to floor of third pharyngeal arch",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nerve supply - Glossopharyngeal nerve",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Development of posterior most part of the tongue with vallecula, median and lateral glossoepiglottic fold",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "From dorsal part of hypobranchial eminence",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Develops in relation to floor of fourth pharyngeal arch",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nerve supply - Internal laryngeal nerve",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Muscles",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "All muscles from occipital myotomes are supplied by hypoglossal nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Except palatoglossus which is supplied by vago accessory complex",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Developmental abnormalities of tongue",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Macroglossia",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Unusually large tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Most commonly seen due to vascular enlargements like hemangiomas, lymphangiomas",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Also seen in Down syndrome and hypothyroidism",
          ),
        ),
        ListTile(
          title: new Text(
            "Ankyloglossia",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Unusually short lingual frenulum ties the tongue to the floor",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Also called tongue – tie",
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
                    builder: (context) => StructTasteBudsTonguePage()))
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
