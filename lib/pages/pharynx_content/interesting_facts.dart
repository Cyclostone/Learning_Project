import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/form_page.dart';
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
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class InterestingFactsPharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Interesting facts",
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
        // Positioned(
        //   right: 8.0,
        //   top: 60.0,
        //   child: InkWell(
        //     onTap: () {
        //       Navigator.push(
        //           context,
        //           CupertinoPageRoute(
        //               builder: (context) => ListPage(
        //                     title: 'ANATOMY OF ABDOMEN',
        //                   )));
        //     },
        //     child: Icon(Icons.home, color: Colors.white),
        //   ),
        // )
      ],
    );

    final bottomContentText = Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Can we swallow and breathe at the same time?",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx67,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "During second part of deglutition – the oropharyngeal isthmus / fauces  (formed by soft palate, Passavant’s ridge and palatopharyngeal arch closes the airway",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "This temporarily halts respiration.",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Infants can drink and breathe simultaneously",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx68,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Larynx is much higher in infants",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "This makes a direct airway passage from nasopharynx to the larynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Milk – flows around to enter the hypopharynx.",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Respiration-swallowing patterns",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.pharynx54,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        ListTile(
          title: new Text(
            "Predominant respiration-swallowing pattern in adult humans is",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "“exhale – swallow – exhale ” pattern followed by",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "“inhale – swallow – exhale” pattern",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "In infants, the temporal pattern of respiratory phase and swallowing is seen, therefore  swallows are more likely to occur during inspiration",
          ),
        ),
        ListTile(
          title: new Text(
            "Reasons",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "In infants, the larynx is positioned higher in the neck, posterior to the oral cavity.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is opened to the nasopharynx, sealed off from the food pathway (between swallows) by contact between the soft palate and epiglottis",
          ),
        ),
        ListTile(
          title: new Text(
            "What determines the nasal / oral breathing?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The position of the soft palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Muscles determine the position of the soft palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nasal breathing – the more active muscle is palatoglossus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Oral breathing – the more active muscle is levator palatini",
          ),
        ),
        ListTile(
          title: new Text(
            "Three gatekeepers preventing tracheo-pulmonary aspiration of the food are :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Epiglottis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Arytenoids",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vocal folds",
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
                CupertinoPageRoute(builder: (context) => HomeMaterial()))
          },
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Text("Finish", style: TextStyle(color: Colors.white)),
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
