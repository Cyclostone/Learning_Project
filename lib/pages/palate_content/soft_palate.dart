import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/palate_content/development_palate.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class SoftPalatePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Soft palate",
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
            "Location",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate14,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Attached to the posterior border of the hard palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Covered on its upper and lower surfaces by mucous membrane",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Composition",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate15,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Muscle fibers",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "An aponeurosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lymphoid tissue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Glands",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Blood vessels",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nerves",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Palatine Aponeurosis",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate16,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Fibrous sheath",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Attached to posterior border of hard palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is the expanded tendon of tensor veli palatini",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Splits to enclose musculus uvulae",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gives origin & insertion to palatine muscles",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Muscles",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tensor veli palatini",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Levator veli palatini",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Palatoglossus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Palatopharyngeus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Musculus uvulae",
          ),
        ),
        ListTile(
          title: new Text(
            "How to remember",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Two from above",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Two from below",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "One in the center",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Tensor veli palatini",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate18,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Origin: spine of sphenoid; auditory tube",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Down syndrome – chromosomal numerical abnormality with trisomy 21",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Insertion: forms palatine aponeurosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Action: Tenses soft palate",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Levator veli palatini",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Origin:petrous temporal bone, auditory tube, palatine aponeurosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Insertion: palatine aponeurosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Action: Raises soft palate",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Palatoglossus",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Origin: palatine aponeurosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Insertion: side of tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Action: pulls root of tongue upward, narrowing oropharyngeal isthmus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Palatopharyngeus",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Origin: palatine aponeurosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Insertion: posterior border of thyroid cartilage",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Action: Elevates wall of the pharynx",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Musculus uvulae",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Origin: posterior border of hard palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Insertion: mucosa of uvula",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Action: Elevates uvula",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Motor Nerve Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "All the muscles are supplied by vago-accessory complex via pharyngeal plexus, except tensor veli palatini",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pharyngeal plexus is formed by pharyngeal branch of vagus nerve carrying cranial part of accessory nerve and pharyngeal branch of glossopharyngeal nerve with sympathetic contribution from superior cervical ganglion",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tensor veli palatini supplied by nerve to medial pterygoid, a branch of the mandibular nerve",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Sensory nerve supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Glossopharyngeal nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Greater palatine nerve (including taste)",
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
                CupertinoPageRoute(builder: (context) => DevPalatePage()))
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
