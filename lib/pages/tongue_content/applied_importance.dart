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
import 'package:learning_platform_app/pages/tongue_content/dorsal_surface.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class AppImpTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Applied importance of ventral surface of tongue – sublingual route of administration of drug",
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
          height: MediaQuery.of(context).size.height * 0.44,
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
            "Anatomical basis",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue6,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drugs easily dissolve in saliva when placed under the tongue and get absorbed into the profuse capillaries on the ventral surface of the tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "They are connected to dorsal lingual vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drain into internal jugular vein",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Advantages",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Bypass first pass metabolism",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Rapid action (effects of nitroglycerin can be appreciated within 1 to 5 min)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ease of administration",
          ),
        ),
        ListTile(
          title: new Text(
            "Note :",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "first pass metabolism - the rapid uptake and metabolism of an agent into inactive compounds by the liver, immediately after enteric absorption and before it reaches the systemic circulation \n\nNitroglycerin – a class of drugs (nitrates) correcting the imbalance between the flow of oxygen and blood to the heart",
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Dorsal Surface",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.tongue3,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Divided into by sulcus terminalis into",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBulletRect(),
        //   title: new Text(
        //     "Anterior 2/3rd  - presulcal area",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBulletRect(),
        //   title: new Text(
        //     "Posterior 1/3rd – post sulcal area",
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Ventral surface",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.tongue4,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        // ListTile(
        //   title: new Text(
        //     "Salient features",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Frenulum – midline mucosal fold connecting under surface of tongue to the floor of oral cavity",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Plica fimbriata - small folds in the membrane running parallel to the frenulum",
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Ventral surface – important related structures",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.tongue5,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Deep lingual vein",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBulletRect(),
        //   title: new Text(
        //     "Unites with sublingual vein to form lingual vein",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBulletRect(),
        //   title: new Text(
        //     "Drains to internal jugular vein",
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Other plica in the body",
        //     style: TextStyle(fontSize: 20.0, color: Colors.red),
        //   ),
        // ),
        // Table(
        //   border: TableBorder.all(width: 0.5, color: Colors.black),
        //   children: [
        //     TableRow(children: [
        //       new Text("", style: TextStyle(fontWeight: FontWeight.bold)),
        //       new Text("Meaning  of Plica – fold of mucosa",
        //           style: TextStyle(fontWeight: FontWeight.bold)),
        //     ]),
        //     TableRow(children: [
        //       new Text(""),
        //       new Text(
        //           "Plica semilunaris - the vertical fold of conjunctiva that occupies the canthus of the eye nearer the nose and is homologous to the nictitating membrane of lower animals"),
        //     ]),
        //     TableRow(children: [
        //       new Text(""),
        //       new Text(
        //           "Plica fimbriata - small folds in the membrane on the ventral surface of tongue"),
        //     ]),
        //     TableRow(children: [
        //       new Text(""),
        //       new Text("Plica vocalis – vocal fold"),
        //     ]),
        //     TableRow(children: [
        //       new Text(""),
        //       new Text(""),
        //     ]),
        //     TableRow(children: [
        //       new Text(""),
        //       new Text(
        //           "Plicae circulares - large valvular flaps projecting into the lumen of the small intestine"),
        //     ]),
        //     TableRow(children: [
        //       new Text(""),
        //       new Text(
        //           "Plica syndrome – Inflammation of synovial folds of knee joint"),
        //     ]),
        //   ],
        // ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => DorSurfTonguePage()))
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
