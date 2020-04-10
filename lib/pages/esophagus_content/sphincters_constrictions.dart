import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/duodenum_content/blood_supply_lymphatic_drainage_innervation.dart';
import 'package:learning_platform_app/pages/esophagus_content/blood_supply_lymphatic_drainage.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class SphincterConstriPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Sphincters and Constrictions",
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
          height: MediaQuery.of(context).size.height * 0.25,
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
            "Sphincters",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Upper esophageal sphincter",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "It is primarily formed by cricopharyngeus \nOther muscles include -",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cervical esophagus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferior pharyngeal constrictor",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Prevents esophageal air insufflation during negative \nintrathoracic pressure events (like during inspiration)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Motor and sensory control by branches of the glossopharyngeal and vagus nerves",
          ),
        ),
        ListTile(
          title: new Text(
            "Lower esophageal sphincter",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Smooth muscle complex in the lower part of the \nesophagus with higher tonic pressures (as evidenced \nby manometric studies)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Myogenic and neural factors maintain the tone",
          ),
        ),
        ListTile(
          title: new Text(
            "Diaphragmatic sphincter",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Composed of striated muscles that also exhibit tone \nand contracts due to the excitatory nerves",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Both lower esophageal sphincter and diaphragmatic \nsphincter relax on swallowing",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Relaxation of these sphincters in absence of \nswallowing – is referred as transient LES relaxation (TLESR)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "TLESR – allows retrograde transportation of stomach \ncontents into the esophagus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Constrictions of esophagus",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text("Distance measured from lower incisor"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cricopharyngeus muscles - 15 cm",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Aortic compression at 22 cm – 25 cm"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left main bronchus at 24 cm – 28 cm"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "The fourth narrowing is not constant. If prominent, it \nis located about 40 - 44 cm from the incisors and may \nbe caused by the tonic effect of the lower esophageal \nsphincter"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Narrowest part of esophagus",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text("Cricopharyngeal sphincter is the narrowest part"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Importance of esophageal constrictions",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "These constrictions are normal features of esophagus \nand should not confused for pathological strictures"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "The distance from incisor tooth is the guide for \npassing endoscopic tube during upper GI endoscopy"),
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => BloodSupEsoPage()))
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
