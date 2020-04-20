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
import 'package:learning_platform_app/pages/tongue_content/blood_supply.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class PapMusTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Papillae and muscles of the tongue",
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
            "Papillae",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Papillae",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Characteristics",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Taste buds",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Filiform"),
              new Text("Conical, most numerous Provides friction surface"),
              new Text("No"),
            ]),
            TableRow(children: [
              new Text("Fungiform"),
              new Text("Tip of tongue, mushroom-shaped"),
              new Text("Present"),
            ]),
            TableRow(children: [
              new Text("Circumvallate"),
              new Text(
                  "10-12 present in a row in front of sulcus terminalis Inverted cone like associated with ducts of Von Ebner’s glands \n\nSupplied by glossopharyngeal nerve, even though located in anterior 2/3rd of tongue"),
              new Text("Present"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue11,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Muscles of tongue",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.tongue12,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                children: [
                  new Text("Characteristics",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ListTile(
                    title: new Text(
                      "4 pairs Intrinsic muscles – superior longitudinal, inferior longitudinal, vertical and transverse",
                    ),
                  ),
                ],
              ),
            ]),
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.tongue13,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                children: [
                  new Text("Extrinsic muscles",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ListTile(
                    title: new Text(
                      "Genioglossus",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Styloglossus",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Hyoglossus",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Palatoglossus",
                    ),
                  ),
                ],
              ),
            ]),
            TableRow(children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.tongue14,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                children: [
                  new Text("Safety muscle of the tongue",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ListTile(
                    title: new Text(
                      "Note – sleep apnea - a disorder in which breathing is briefly and repeatedly interrupted during sleep \n\nuvulopalatopharyngoplasty - surgical procedure used to remove tissue in the throat in order to widen the airway of the patient, typically carried out as treatment for sleep apnea",
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Safety muscles",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Structure"),
              new Text("Muscle"),
              new Text("Nerve"),
              new Text("Action"),
              new Text(""),
            ]),
            TableRow(children: [
              new Text("Of tongue"),
              new Text("Genioglossus"),
              new Text("Hypoglossal nerve"),
              new Text("Prevents falling back of the tongue"),
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.tongue15,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ]),
            TableRow(children: [
              new Text("Of larynx"),
              new Text("Posterior cricoarytenoid"),
              new Text("Recurrent laryngeal nerve"),
              new Text("Abduction of the vocal folds"),
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.tongue16,
                  fit: BoxFit.fitHeight,
                ),
              ),
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
                CupertinoPageRoute(builder: (context) => BloodSupTonguePage()))
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
