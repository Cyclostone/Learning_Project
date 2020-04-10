import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class ExterLiverPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "External features, relations and supports of liver",
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
          height: MediaQuery.of(context).size.height * 0.29,
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
            "Surfaces And Borders",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver15,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "2 surfaces – diaphragmatic surface and visceral surface",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "1 border – inferior border",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Inferior Border",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver16,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "At the junction of diaphragmatic and visceral surfaces",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Thin and sharp",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Extends from 9th costal margin on right side to 8th costal margin on the left side",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "On deep inspiration - inferior border is felt during per abdominal examination",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Diaphragmatic Surface",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Indistinct subdivisions - Superior, anterior, right lateral and posterior surfaces",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Bare area of liver",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Fissure for ligamentum venosum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Attachment of coronary ligaments, right and left triangular ligament and falciform ligament",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Visceral Surface",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver40,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Has porta hepatis, fossa for gallbladder and fissure for ligamentum teres hepatis",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Relations Of Visceral Surface",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver18,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "From left to right",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "stomach - gastric impression",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "fissure for ligamentum teres",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "On right side - quadrate lobe",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Fossa for gallbladder",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right colic flexure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Junction of first and second part of duodenum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right kidney (hepatorenal pouch of Morison)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right suprarenal gland",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Porta Hepatis",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Structures present",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Portal vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hepatic artery and branches",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hepatic duct and branches",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lymphatics",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Connective tissue",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ligamentum teres hepatis and ligamentum venosum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Ligamentum teres hepatis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Present within the free margin of falciform ligament",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Represents the remnant of left umbilical vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ligamentum venosum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Fibrous remnant of the ductus venosus of fetal circulation",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Attached to the left branch of the portal vein within the porta hepatis",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Relations of diaphragmatic surface",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superior surface",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Central tendon of diaphragm",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anterior surface",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Falciform ligament",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right lateral surface",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Upper part related to lung and pleura, middle part to costodiaphragmatic recess (only to pleura)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posterior surface",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Bare area of liver - direct contact with diaphragm",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Caudate lobe - related to lesser sac",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left lobe - related to abdominal esophagus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Bare area of Liver",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Non-peritoneal triangular area on the posterior surface of the liver",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Related to diaphragm",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vein within the liver communicate with diaphragmatic veins - forms an important site of portocaval anastomosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Infection and tumors can spread (outside the liver) faster through this surface",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Supports Of Liver",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hepatic veins connecting liver to IVC",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Intra-abdominal pressure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Peritoneal ligaments – connect liver to the abdominal wall",
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
                CupertinoPageRoute(builder: (context) => BloodSupLiverPage()))
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
