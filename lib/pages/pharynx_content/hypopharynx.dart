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
import 'package:learning_platform_app/pages/pharynx_content/spaces.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class HypoPharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Hypopharynx (laryngopharynx)",
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
            "Location and extension",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx56,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Behind the Larynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "In front of 3rd to 6th Cervical vertebra",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "From the tip of epiglottis superiorly to the lower border of cricoid cartilage inferiorly",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Communications",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.pharynx53,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anteriorly with the Larynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superiorly with the oropharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferiorly with the esophagus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Projections",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx57,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hypopharynx projects laterally on each side of the larynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Forms pyriform fossa on each side of larynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The part of hypopharynx posterior to the larynx is called postcricoid part",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Piriform (pyriform) fossa / recess / sinus / smuggler’s fossa",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx58,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Etymology",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "pyriform - pear-shaped or flame-shaped",
          ),
        ),
        ListTile(
          title: new Text(
            "Boundaries",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Medially- aryepiglottic fold \nLaterally – inner surface of thyrohyoid membrane and lamina of thyroid cartilage",
          ),
        ),
        ListTile(
          title: new Text(
            "Nerve present under the mucosa of lateral wall of piriform fossa - Internal laryngeal nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "Nerve supply",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Internal laryngeal nerve",
          ),
        ),
        ListTile(
          title: new Text(
            "Applied importance",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Foreign bodies like fish bones may get impacted in the fossa and during removal, there may be injury to the internal laryngeal nerve",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx59,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "The impacted chicken bone is clearly identified in the left pyriform fossa",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Confusing “piriform” structures",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Piriform recess / fossa / sinus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx60,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Lateral extension of hypopharynx",
          ),
        ),
        ListTile(
          title: new Text(
            "Piriform aperture",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx61,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Heart shaped bony anterior nasal opening",
          ),
        ),
        ListTile(
          title: new Text(
            "Piriform lobe / area / cortex",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx62,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Part of olfactory brain related to under surface of the forebrain",
          ),
        ),
        ListTile(
          title: new Text(
            "Piriformis muscle",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx63,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "A pear shaped muscle under the gluteus maximus. Usually sciatic nerve emerges below this muscle",
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
                CupertinoPageRoute(builder: (context) => SpacesPharynxPage()))
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
