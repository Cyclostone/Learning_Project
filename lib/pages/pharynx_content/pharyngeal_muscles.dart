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
import 'package:learning_platform_app/pages/pharynx_content/tonsillar_bed.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class PharynPharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Pharyngeal muscles and Passavant’s ridge",
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
            "Pharyngeal muscles",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Three constrictors",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Superior constrictor",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Middle constrictor",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Inferior constrictor",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Three longitudinal muscles",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Stylopharyngeus",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Palatopharyngeus",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Salpingopharyngeus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "All are derived from 4th  pharyngeal arch except stylopharyngeus (from 3rd arch)",
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Muscle", style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Origin", style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Insertion",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Constrictors",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Superior constrictor"),
              new Text(
                  "Pterygopharyngeal part: pterygoid hamulus and posterior part of medial pterygoid lamina \nBuccopharyngeal part: pterygomandibular raphe \nMylohyoid part: posterior end of mylohyoid line of mandible \nGlossopharyngeal part: mucosa of tongue"),
              new Text(
                  "Pharyngeal tubercle And Upper part of median fibrous raphe"),
            ]),
            TableRow(children: [
              new Text("Middle constrictor fan shaped muscle"),
              new Text(
                  "Stylohyoid ligament Lesser cornu of hyoid bone Upper border of greater cornu of hyoid bone"),
              new Text("Median fibrous raphe"),
            ]),
            TableRow(children: [
              new Text("Inferior constrictor"),
              new Text(
                  "Thyropharyngeus: from oblique line of thyroid cartilage, tendinous band stretching across the cricothyroid muscle and from inferior cornu of thyroid cartilage \nCricopharyngeus: side of cricoid cartilage"),
              new Text("Median fibrous raphe"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Longitudinal muscles",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Stylopharyngeus"),
              new Text("Styloid process"),
              new Text("Posterior border of thyroid cartilage "),
            ]),
            TableRow(children: [
              new Text("Palatopharyngeus"),
              new Text("Palatine aponeurosis"),
              new Text("Posterior border of thyroid cartilage"),
            ]),
            TableRow(children: [
              new Text("Salpingopharyngeus"),
              new Text("Cartilage of auditory tube"),
              new Text("Posterior border of thyroid cartilage"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Passavant’s ridge or palatopharyngeal sphincter or velopharyngeal sphincter",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Formed by upper fibres of  palatopharyngeal muscle with few fibres of superior constrictor",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "During deglutition – Passavant’s ridge and soft palate are approximated",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Thus nasopharyngeal isthmus is closed, preventing regurgitation of food into the nasal cavity",
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
                CupertinoPageRoute(builder: (context) => TonsPharynxPage()))
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
