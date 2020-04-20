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
import 'package:learning_platform_app/pages/pharynx_content/oropharynx.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class NasoPharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Nasopharynx",
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
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx18,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Location and extent",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Situated behind the nasal cavity",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Extends",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "from skull base superiorly",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "to the soft palate inferiorly",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Communications",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly with nasal cavities through choanae",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly with the oropharynx through the velo-pharyngeal sphincter",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Laterally with middle ear through auditory tube",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Wall of nasopharynx",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Salient features:",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nasopharyngeal tonsil",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pharyngeal opening of Eustachian tube",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tubal tonsil",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pharyngeal recess or fossa of Rosenmuller",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pouch of Luschka",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nasopharyngeal tonsil (adenoids)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lymphatic tissue located in the roof of nasopharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Synonyms – pharyngeal tonsil, adenoid",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Enlargement is called adenoid hypertrophy",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pharyngeal opening of Eustachian tube (auditory tube)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Auditory tube :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "passage connecting the middle ear and nasopharynx \nOther names – Eustachian tube, pharyngotympanic tube",
          ),
        ),
        ListTile(
          title: new Text(
            "Salpinx :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "a trumpet like instrument \nIn anatomy, salpingo – used to tube. \nEg: Salphingopharyngeus – muscle connecting auditory tube and pharyngeus \nSalpingitis – inflammation of uterine tubes (Fallopian tube)",
          ),
        ),
        ListTile(
          title: new Text(
            "Confusing tubes :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Eustachian tube – Auditory tube \nFallopian tube – Uterine tube",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Eustachian tube endoscopy",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Auditory tube opens into the lateral wall of nasopharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Behind a firm elevation called torus tubarius",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Torus tubarius is formed by medial end of the cartilage of the auditory tube",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Two folds arising from auditory opening are",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Salpingopharyngeal fold – from underlying salpingopharyngeus muscle",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Salpingopalatine fold – from underlying levator veli palatini",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Functions and clinical significance",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Auditory tube equilibrates pressure on both sides of tympanic membrane \n\nIf auditory tube is blocked – leads to sucking of tympanic membrane",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Valsalva maneuver",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            " If air is blown out with closed oral lips and nasal apertures, air flows out in auditory tube, if the tympanic membrane is ruptured, air may come of out through the ear with a hissing sound",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Methods to open auditory tube – (All these methods are obsolete now)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Politzerization: procedure that involves inflating the middle ear by blowing air up the nose during the act of swallowing",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Toynbee maneuver: Pinching the nose and swallowing. Also done with eustachian tube catheterization",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx25,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Tubal tonsil",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx26,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Component of Waldeyer’s ring",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "(hyperlink to walderyer’s ring from oral cavity module)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located close to torus tubarius, posterior to Eustachian tube opening",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pharyngeal recess or fossa of Rosenmuller",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Synonym – pharyngeal recess",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Depression behind the tubal elevation",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Commonest site of carcinoma of pharynx",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pouch of Luschka",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx27,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Also called nasopharyngeal bursa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is a mucosal pouch extending inside nasopharyngeal tonsil",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Indicates the attachment of notochord with dorsal wall of foregut (cranial part)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Rathke’s pouch",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "an evagination at the roof of the developing mouth in front of the buccopharyngeal membrane.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It forms adenohypophysis (anterior part of pituitary)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Remnants of Rathke’s pouch may be seen",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Pharyngeal isthmus",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx28,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Synonyms - isthmus of the fauces or the oropharyngeal isthmus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly: free margin of soft palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posteriorly: Passavant’s ridge",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "On each side: palatopharyngeal arch",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nerve supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx29,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sensory: glossopharyngeal nerve through pharyngeal plexus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pharyngeal branch of maxillary nerve (V2)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nasopharynx examination",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx30,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Posteriorly: Passavant’s ridge :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "a spatula is used to depress a protruded tongue and a warm indirect laryngoscopy mirror is introduced into the oropharynx and cavity and walls of nasopharynx reflection is seen.",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Transoral Nasopharyngoscopy",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx31,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "A mirror image of nasopharynx can be documented",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nasal endoscopy",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx32,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Fiberoptic endoscopic evaluation of swallowing",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "first choice method for studying swallowing disorders",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "flexible fiberoptic endoscope is introduced transnasally",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Camera is positioned at oropharynxs",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Food and liquid boluses are then given to the patient",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Adenoid hypertrophy",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx33,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "may interfere with respiration through nasal cavities",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "may affect voice",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "chronic enlargement may lead to adenoid facies manifesting as enlarged face, prominent incisors, smaller maxilla, short upper lip, elevated nostrils and high arched palate",
          ),
        ),
        ListTile(
          title: new Text(
            "Adenoidectomy :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "surgical removal of adenoids",
          ),
        ),
        ListTile(
          title: new Text(
            "Nasopharyngeal tumor :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx34,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Most common in pharyngeal recess",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is a variety of squamous cell carcinoma",
          ),
        ),
        ListTile(
          title: new Text(
            "Nasopharyngeal angiofibroma:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Locally aggressive vascular tumor of the nasopharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Arises from the superior margin of the sphenopalatine foramen",
          ),
        ),
        ListTile(
          title: new Text(
            "Sphenopalatine foramen :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Foramen present in the posterior part of superior meatus of the nose.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Connects nasal cavity into the pterygopalatine fossa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Transmits sphenopalatine artery and vein, posterior superior lateral nasal nerves and nasopalatine nerves",
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
                CupertinoPageRoute(builder: (context) => OroPharynxPage()))
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
