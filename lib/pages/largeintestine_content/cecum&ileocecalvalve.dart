import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/largeintestine_content/blood_supply.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class CecumLGPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Cecum and ileocecal valve",
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
            "Etymology",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cecum – caecus \"blind, hidden,\" named so for being prolonged into a cul-de-sac",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Definition",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The pouch at the beginning of the colon",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Spelling",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ceacum = cecum",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Location",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "In right iliac fossa",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Peritoneal relations",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg2,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Most commonly",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cecum with a retrocecal appendix is bound to the iliac peritoneum over an extensive area (fig C)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "However, cecum may be completely intraperitoneal (fig A) or only connected to posterior peritoneum with a small stalk (fig B)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Superior ileocecal fold",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg3,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mesentery of the terminal ileum continuing with cecum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "May form superior and inferior folds",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "May enclose small, inconsistent fossae within them",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Types of caecum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg4,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg5,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("First (Fetal / Infantile) Type I",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Conical cecum and appendix hangs from it",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Persists in ~ 2 %",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            TableRow(children: [
              new Text("Second (Childhood) Type II"),
              new Text(
                  "Quadrate cecum with saccules and appendix in the center"),
              new Text("Persists in ~ 3 %"),
            ]),
            TableRow(children: [
              new Text("Third (Adult) Type III"),
              new Text(
                  "Cecum with enlarged right saccule and pushed up left saccule Appendix connected between anterior and posterior taeniae"),
              new Text("Present in ~ 90 %"),
            ]),
            TableRow(children: [
              new Text("Fourth (Geriatric) Type IV"),
              new Text(
                  "Cecum with atrophy of the left saccule and enlargement of the right saccule Apex and the appendix are now close to the ileocecal valve"),
              new Text("Present in ~ 4 %"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Important relations - cecal bed",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg6,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Psoas major muscle",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nerves",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Lateral femoral cutaneous N",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Femoral N",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Genitofemoral N",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gonadal arteries and veins",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ureter",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Iliacus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "External iliac artery",
          ),
        ),
        ListTile(
          title: new Text(
            "These structures should be protected while mobilizing cecu",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ileocecal valve",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Transverse slit of 1-1.5 cm between terminal ileum and cecum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Formed by two parallel transverse folds / labia / lips / flaps",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Has papillary shape",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Projects into the cecum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ileal circular muscles with surrounding mucosa are responsible for this protrusion",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "On the ends these folds unite and form frenulum",
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
                CupertinoPageRoute(builder: (context) => BloodLGPage()))
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
