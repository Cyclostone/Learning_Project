import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/palate_content/applied_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class HardPalatePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Hard palate",
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
            Images.palate4,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Components",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Palatine process of maxilla",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Horizontal plate of palatine bone",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Location",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lies in the roof of the oral cavity",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Forms the floor of the nasal cavity",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Features",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate5,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Bounded by alveolar arches",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posteriorly, continuous with soft palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Its undersurface is covered by mucoperiosteum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Shows transverse ridges in the anterior parts called palatine rugae",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lined by  masticatory mucosa, keratinized stratified squamous epithelium",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Sensory Nerve Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate6,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "By the maxillary nerve through its branches",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Greater palatine nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lesser palatine nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nasopalatine nerve",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Blood Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Branches of the maxillary artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Greater palatine",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lesser palatine",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sphenopalatine",
          ),
        ),
        ListTile(
          title: new Text(
            "Ascending palatine, branch of the facial artery",
          ),
        ),
        ListTile(
          title: new Text(
            "Ascending pharyngeal, branch of the external carotid artery",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Minor Salivary Glands",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.palate8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The greatest concentrations present in - hard and soft palates",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Below the surface of the mucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Behind a line drawn between the first molar teeth",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Innervated by facial nerve via connections with greater palatine nerve",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Taste sensation",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Taste buds are located near the junction of hard and soft palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Via - Facial nerve (VII) from the anterior two thirds of the tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Glossopharyngeal nerve (IX) from the posterior one third of the tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "A branch of the vagus nerve (X) carries some taste sensations from the back of the oral cavity.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Greater petrosal nerve carries some taste sensation from the soft palate",
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
                CupertinoPageRoute(builder: (context) => AppPalatePage()))
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
