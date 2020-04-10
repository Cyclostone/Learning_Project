import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/terminology_esophagus_axis.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class IntroEsoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Introduction",
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
        // Positioned(
        //   left: 8.0,
        //   top: 60.0,
        //   child: InkWell(
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //     child: Icon(Icons.arrow_back, color: Colors.white),
        //   ),
        // ),
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
            Images.esophagus1,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Muscular tube connecting pharynx and \nstomach",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Usually 8 inches in length",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posterior to the esophagus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Oesophagus vs esophagus",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Etymology",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text("oisein - to carry and phagos - to eat or from",
              style: TextStyle(fontStyle: FontStyle.italic)),
        ),
        ListTile(
          title: new Text("phagema – food",
              style: TextStyle(fontStyle: FontStyle.italic)),
        ),
        ListTile(
          title: new Text(
              "Spelling in German and in British English is \noesophagus",
              style: TextStyle(fontStyle: FontStyle.italic)),
        ),
        ListTile(
          title: new Text("American English – esophagus",
              style: TextStyle(fontStyle: FontStyle.italic)),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Beginning and termination",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus2,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Begins at C6 - distal end of the laryngopharynx"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Terminates at cardiac orifice of stomach",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Air under right dome of \ndiaphragm indicates \npneumoperitoneum which \nmight be seen after any \nabdominal surgery due to \na perforated hollow viscus"),
        ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Gastric emptying scintigraphy",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        // ListTile(
        //   title: new Text(
        //       "Assessment of gastroparesis in \npatients with post-prandial \nsymptoms of nausea, vomiting, \nabdominal pain, and/or early \nsatiety"),
        // ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => TermEsoPage()))
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
