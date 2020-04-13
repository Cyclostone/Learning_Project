import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/largeintestine_content/histology_colon.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class CharLGPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Characteristics of large intestine",
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
            "Taenia coli",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg14,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "These are three longitudinal muscular bands in the muscular layer (outer longitudinal layer) of colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Bands begin at the base of appendix",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Three bands are named as -",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Taenia libera or free taenia which is located on the ventral surface",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Taenia omentalis (omental taenia) which is located posterolaterally",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Taenia mesocolica (mesenteric taenia) which is located posteromedially ",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Taenia convergence",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg15,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Useful guide to the position of the appendix",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "The haustra",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg16,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Singular - haustrum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "These are small pouches caused by sacculation",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "They give a segmented appearance to the colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Formed by circumferential contraction of the inner muscular layer of the colon",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Appendices epiploicae/ Epiploic appendages/ Omental appendices",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Small pouches of the peritoneum filled with fat and situated along the colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Distributed longitudinally in two rows",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Along taenia libera and along taenia omentalis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Only one row of appendices epiploicae are present along transverse colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Absent in rectum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Supplied by one - two small nutrient arteries that pierce the bowel serosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Colonic diverticula may arise from the entry point of blood vessels",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Importance",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Inflammation of these structures is called Epiploic appendagitis",
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
                context, CupertinoPageRoute(builder: (context) => HistLGPage()))
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
