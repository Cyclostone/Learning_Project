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
import 'package:learning_platform_app/pages/tongue_content/papillae.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class DorSurfTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Dorsal surface",
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
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Dorsal Surface",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Covered with mucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Stratified squamous non-keratinized epithelium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Colour of dorsum of tongue is influenced by many factors",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Blood supply of the tongue is influenced by systemic factors",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Division of dorsal surface",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Anterior 2/3rd – presulcal",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Variable median furrow",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Four types of mucosal projections – lingual papillae present",
          ),
        ),
        ListTile(
          title: new Text(
            "Posterior 1/3rd",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Median and two lateral glossoepiglottic folds attach tongue to epiglottis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The space between these folds on either side is epiglottic vallecula",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Characterised by presence of lingual tonsil",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Structures with confusing dorsal and ventral surfaces",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Structure",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Surfaces",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Names indicating proper anatomical positions",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Foot"),
              new Text("Dorsum of foot and Sole"),
              new Text(
                  "Superior surface of the foot Inferior surface of the foot / Sole"),
            ]),
            TableRow(children: [
              new Text("Penis"),
              new Text("Dorsal surface and Ventral surface"),
              new Text(""),
            ]),
            TableRow(children: [
              new Text("Tongue"),
              new Text("Dorsal surface and Ventral surface"),
              new Text("Superior / Oral / palatal surface Inferior surface"),
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
                CupertinoPageRoute(builder: (context) => PapMusTonguePage()))
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
