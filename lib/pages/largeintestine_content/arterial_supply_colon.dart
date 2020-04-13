import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/largeintestine_content/venous_drainage.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class ArtSupLGPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Arterial supply of colon",
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
            "Colon is supplied by superior mesenteric artery (SMA) and inferior mesenteric artery (IMA) :",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg31,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg32,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Ileocolic artery",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Cecum and lower portion of ascending colon",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
            TableRow(children: [
              new Text("Right colic artery"),
              new Text("Lower portion of ascending colon"),
            ]),
            TableRow(children: [
              new Text("Middle colic artery"),
              new Text("Right 2/3rd of the transverse colon"),
            ]),
            TableRow(children: [
              new Text("Left colic artery"),
              new Text("Left 1/3rd of the transverse colon Descending colon"),
            ]),
            TableRow(children: [
              new Text("Sigmoidal arteries"),
              new Text("Sigmoid colon"),
            ]),
            TableRow(children: [
              new Text("Superior rectal artery"),
              new Text("Part of anorectum above pectinate line"),
            ]),
          ],
        ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Normally it is right side colon",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Retroperitoneal - covered with peritoneum anteriorly only",
        //   ),
        // ),

        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Superior mesenteric artery",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg33,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Origin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "from abdominal aorta at L1 level",
          ),
        ),
        ListTile(
          title: new Text(
            "Course",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Runs downwards and to the right",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anterior to uncinate process of the pancreas",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lies within the mesentery",
          ),
        ),
        ListTile(
          title: new Text(
            "Branches",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Middle colic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right colic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ileocolic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Jejunal and ileal branches (about 12 to 15)",
          ),
        ),
        ListTile(
          title: new Text(
            "Other collateral branches",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Contribution to intermesenteric arcade",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Accessory left colic artery.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Contribution to oblong arch",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Inferior mesenteric artery",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg34,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Origin",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "from abdominal aorta at L3 level",
          ),
        ),
        ListTile(
          title: new Text(
            "Course",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Runs downwards and to the left",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Runs retroperitoneally",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Crosses left common iliac artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Beyond this point – it is called superior rectal artery",
          ),
        ),
        ListTile(
          title: new Text(
            "Branches",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left colic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sigmoid arteries",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Continues as superior rectal artery",
          ),
        ),
        ListTile(
          title: new Text(
            "Other collateral branches",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Accessory middle colic artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Colosigmoid artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Rectosigmoid artery",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Marginal artery of Drummond",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg35,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Formation",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Is a single arterial loop composed of a series of anastomosing arcades between branches of the ileocolic, right colic, middle colic, left colic, and sigmoidal arteries",
          ),
        ),
        ListTile(
          title: new Text(
            "Course",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Parallel with the mesenteric border of the large intestine",
          ),
        ),
        ListTile(
          title: new Text(
            "Termination",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "May or may not terminate at the superior rectal artery",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Arc of Riolan",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Arterio-arterial anastomosis between the superior and inferior mesenteric arteries \nRuns towards the root of mesentery \nAlso called:",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mesenteric meandering artery (of Moskowitz)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Central anastomotic mesenteric artery",
          ),
        ),
        ListTile(
          title: new Text(
            "Usually connects the middle colic branch of the SMA with the left colic branch of the IMA",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Mnemonic to remember",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Marginal artery of Drummond runs Distally and the arc of Riolan proximally to the root of the mesentery.",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Critical Point of Sudeck",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg36,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Refers to a specific location in the arterial supply of the rectosigmoid junction, namely the origin of the last sigmoid arterial branch from the inferior mesenteric artery (IMA)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "No longer considered to be as \"critical\" as was once thought",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Unimportant in present-day abdominal and abdominoperineal resections",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Griffiths critical point",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg37,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Site of watershed anastomosis between the ascending left colic artery and the marginal artery of Drummond occurring in the region of the splenic flexure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Represents communication between SMA and IMA",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "May be the source of blood supply for splenic flexure and descending colon",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Splenic flexure blood supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg38,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Splenic flexure is a watershed region",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It receives dual blood supply from the terminal branches of the SMA and IMA",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Prone to ischemic damage (ischemic colitis) in cases of low blood pressure",
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
                context, CupertinoPageRoute(builder: (context) => VenLGPage()))
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
