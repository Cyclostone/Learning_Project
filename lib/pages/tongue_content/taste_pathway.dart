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
import 'package:learning_platform_app/pages/tongue_content/clinical_significance.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class TastePathwayTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Taste pathway",
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
            "Location of receptors",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Along the walls of papillae of the dorsum of the tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "mucosa of the epiglottis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "pharynx",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pathway – general outline",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Signals from the taste buds travel via different nerves to gustatory areas of the nucleus of the solitary tract which relays information to the thalamus; the thalamus projects to the gustatory cortex",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "First order neurons",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue30,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "1. anterior 2/3rd of tongue – chorda tympani branch of facial nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "2. Posterior 1/3rd of tongue – glossopharyngeal nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "3. Posterior most part of tongue – internal laryngeal nerve, branch of vagus nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "4. Pharynx – branches of maxillary nerve and vagus nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "5. Under surface of palate - palatine nerves, through pterygopalatine ganglion (no synapse), pterygoid canal, greater petrosal and facial nerve (cell bodies in geniculate ganglion",
          ),
        ),
        ListTile(
          title: new Text(
            "All the first order neurons reach nucleus tractus solitarius in the medulla",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue31,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Note – Nucleus tractus solitarius (NTS)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Is a vertical set of nuclei present in the medulla oblongata of brainstem",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "NTS has primary sensory fibers and descending fibers of the vagus, glossopharyngeal, and facial nerves",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Second order neurons",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue32,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ascend in the ipsilateral medial lemniscus and pass to the ventral posteromedial (VPM) nucleus of the thalamus \nNote-VPM thalamus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The specific nucleus of thalamus conveying sensory information from the face and oral cavity",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Third order neurons",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue33,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "From the thalamus to neurons in the anterior insula and the frontal operculum in the ipsilateral cerebral cortex",
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
                    builder: (context) => ClinicalSigTonguePage()))
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
