import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/lips.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class TeethOCPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Teeth - 2 sets",
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
            "Deciduous teeth",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Total - 20 individual primary teeth",
          ),
        ),
        ListTile(
          title: new Text(
            "One each side: \n2 incisors \n1 canine \n2 molars",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Lower central incisors erupt first (around 6-7 months)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Permanent teeth",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Total - 32 individual primary teeth",
          ),
        ),
        ListTile(
          title: new Text(
            "One each side: \n2 incisors \n1 canine \n2 premolars \n3 molars",
          ),
        ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Inferiorly – tongue and reflection of mucous membrane under the tongue",
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Differences",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Primary teeth",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Permanent teeth",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Thinner enamel and dentin layers"),
              new Text("Thick enamel and dentin layer"),
            ]),
            TableRow(children: [
              new Text("Broad and flat contacts"),
              new Text("Point contacts"),
            ]),
            TableRow(children: [
              new Text("Lighter color"),
              new Text("Darker color"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Suggested animation",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc23,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Structure of a tooth",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Enamel",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The hardest bodily tissue covering the surface of the dental crown",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Made of calcium",
          ),
        ),
        ListTile(
          title: new Text(
            "Dentin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "A layer underlying enamel",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Dentinal tubule runs inside the dentin",
          ),
        ),
        ListTile(
          title: new Text(
            "Pulp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The softer, living inner structure of teeth",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Has blood vessels and nerves",
          ),
        ),
        ListTile(
          title: new Text(
            "Cementum",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "A layer of connective tissue that binds the roots of the teeth firmly to the gums and jawbone",
          ),
        ),
        ListTile(
          title: new Text(
            "Periodontal ligament",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Tissue that helps hold the teeth tightly against the jaw.",
          ),
        ),
        ListTile(
          title: new Text(
            "Alveolar bone",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "The jaw bone which supports the teeth; dentoalveolar syndesmosis or gomphosis (a type of fibrous joint) binds teeth to the jaw bone.",
          ),
        ),
        ListTile(
          title: new Text(
            "Gum (gingiva)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "the soft tissue covering the alveolar bone ",
          ),
        ),
        ListTile(
          title: new Text(
            "Gingival sulcus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Space between the tooth and gums.",
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
                context, CupertinoPageRoute(builder: (context) => LipsOCPage()))
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
