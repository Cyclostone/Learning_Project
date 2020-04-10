import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/development_histology.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class BloodSupEsoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood Supply and Lymphatic Drainage",
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
            "Arterial Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Upper esophageal sphincter",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus11,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Cervical part",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferior thyroid artery",
          ),
        ),
        ListTile(
          title: new Text(
            "Thoracic part",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tracheobronchial arteries",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Bronchoesophageal arteries",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Branches from descending thoracic aorta",
          ),
        ),
        ListTile(
          title: new Text(
            "Abdominal part",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Splenic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left gastric artery",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Venous drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Neck: inferior thyroid veins",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Thorax: azygos vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Abdomen: left gastric veins",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Importance of venous drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus12,
            fit: BoxFit.fitHeight,
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Diaphragmatic sphincter",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lower esophagus is the site of portocaval \nanastomosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Portal system: left gastric vein draining into the \nportal vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Caval system: lower esophageal veins draining \ninto azygos vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Enlargement of these veins due to causes like \nobstruction leads to esophageal varices",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus13,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cervical and upper thoracic part – above tracheal \nbifurcation – drain cranially toward the thoracic duct or the \nsubclavian lymph trunks",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Lower thoracic part – below the tracheal bifurcation – drain \ncaudally toward the cisterna chyli via the lower mediastinal, \nleft gastric, and celiac lymph nodes"),
        ),
        ListTile(
          leading: new MyBullet(),
          title:
              new Text("At tracheal bifurcation – lymph flow is bidirectional"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Abdominal part - drains into celiac group of lymph nodes"),
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => DevHistEsoPage()))
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
