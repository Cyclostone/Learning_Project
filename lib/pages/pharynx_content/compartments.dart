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
import 'package:learning_platform_app/pages/pharynx_content/pharyngeal_muscles.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class CompPharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Compartments and Pharyngeal aponeurosis – pharyngobasilar fascia",
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
          height: MediaQuery.of(context).size.height * 0.39,
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
            "Compartments",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx3,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nasopharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Oropharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Laryngopharynx (Hypopharynx)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pharyngeal aponeurosis – pharyngobasilar fascia",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx4,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Extends from base of skull",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Situated between mucous and muscular layer of pharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sinus of Morgagni is the gap between the upper border of the superior constrictor and skull base. Pharyngobasilar fascia fills this gap.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Firmly connected to the basilar portion of the occipital and the petrous portions of the temporal bones",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Strengthened posteriorly by a strong fibrous band – pharyngeal raphe",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "To this band – all constrictors of pharynx gets attached",
          ),
        ),
        ListTile(
          title: new Text(
            "Note - Giovanni Battista Morgagni",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx5,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Italian anatomist, generally regarded as the father of modern anatomical pathology",
          ),
        ),
        ListTile(
          title: new Text(
            "Eponyms with Morgagni name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sinus of Morgagni of pharynx: \nspace between the upper border of the superior pharyngeal constrictor muscle, the base of the skull",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sinus of Morgagni of aorta (aortic sinus): \ndilations of the ascending aorta, which occurs just above the aortic valve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Columns of Morgagni",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Foramina of Morgagni",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hypermature cataract (\"Morgagnian cataract\")",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hydatid of Morgagni",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Morgagni's hernia",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx6,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pierced by auditory tube, ascending palatine branch of facial artery, ascending pharyngeal artery, levator veli palatini and tensor veli palatini.",
          ),
        ),
        ListTile(
          title: new Text(
            "Importance",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Neoplastic infiltration of this region (Trotter’s Syndrome) can result in ipsilateral conductive hearing loss, ipsilateral immobilization of the soft palate and ipsilateral trigeminal (mandibular) neuralgia",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx7,
            fit: BoxFit.fitHeight,
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
                CupertinoPageRoute(builder: (context) => PharynPharynxPage()))
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
