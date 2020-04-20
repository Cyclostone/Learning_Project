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
import 'package:learning_platform_app/pages/tongue_content/development.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class BloodSupTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood Supply, Lymphatic Drainage and Innervation",
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
            "Arterial Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lingual artery – branch from external carotid artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lingual branches of inferior alveolar artery",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Venous drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Dorsal lingual vein – unite with venae comitantes of lingual artery to form lingual vein that drain into internal jugular vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Deep lingual vein – present on the under surface of tongue joins with sublingual vein from salivary gland to form veins accompanying hypoglossal nerve (called vena comitans nervi hypoglossi) – drain into lingual or facial or internal jugular vein",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue19,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Part of the tongue"),
              new Text("Draining lymph nodes"),
              new Text("Crosses to opposite side"),
            ]),
            TableRow(children: [
              new Text("Tip of tongue"),
              new Text("Submental lymph nodes Jugulodigastric"),
              new Text("YES"),
            ]),
            TableRow(children: [
              new Text("Central part of body of tongue"),
              new Text("Inferior deep cervical (jugulodigastric)"),
              new Text("YES"),
            ]),
            TableRow(children: [
              new Text("Lateral part of body of tongue"),
              new Text("Submandibular nodes"),
              new Text("NO"),
            ]),
            TableRow(children: [
              new Text("Posterior 1/3rd"),
              new Text(
                  "Superior deep cervical (jugulo-omohyoid) and inferior (jugulodigastric)"),
              new Text("YES"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Innervation of tongue",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue20,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Innervation"),
              new Text("Embryological correlation"),
            ]),
            TableRow(children: [
              new Text(
                  "Anterior two third of tongue General sensory Lingual nerve \n\n\nSpecial sensory Chorda tympani nerve"),
              new Text(
                  "Develop from lingual swellings in relation to first arch (branch of Mandibular nerve) \n\nPretrematic branch from second arch (branch of facial nerve)"),
            ]),
            TableRow(children: [
              new Text(
                  "Posterior one third of tongue General + Special sensory \nGlossopharyngeal nerve"),
              new Text(
                  "Develop from ventral part of hypobranchial eminence in relation to third arch (glossopharyngeal nerve)"),
            ]),
            TableRow(children: [
              new Text(
                  "Posterior most part of tongue General + Special sensory \nInternal laryngeal nerve"),
              new Text(
                  "Develop from dorsal part of hypobranchial eminence in relation to fourth arch (Internal laryngeal nerve)"),
            ]),
          ],
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => DevTonguePage()))
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
