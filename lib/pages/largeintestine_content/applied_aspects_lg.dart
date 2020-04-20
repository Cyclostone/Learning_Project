import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

import '../../form_page.dart';

class AppAsp2LGPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Applied aspects",
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
        // Positioned(
        //   right: 8.0,
        //   top: 60.0,
        //   child: InkWell(
        //     onTap: () {
        //       Navigator.push(
        //           context,
        //           CupertinoPageRoute(
        //               builder: (context) => ListPage(
        //                     title: 'ANATOMY OF ABDOMEN',
        //                   )));
        //     },
        //     child: Icon(Icons.home, color: Colors.white),
        //   ),
        // )
      ],
    );

    final bottomContentText = Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Evaluation of colon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Barium enema",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg42,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "X-ray of the abdomen after an enema containing barium sulphate is injected into the large intestine \nthrough the anal canal",
          ),
        ),
        ListTile(
          title: new Text(
            "Colonoscopy",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        ListTile(
          title: new Text(
            "A long flexible endoscope instrument is passed through anal canal to view the colon",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg43,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Congenital Anomalies",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Anorectal fistula",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg44,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Resulting from improper development of urorectal septum Can lead to connection between rectum and urethra (rectourethral fistula)",
          ),
        ),
        ListTile(
          title: new Text(
            "Or",
          ),
        ),
        ListTile(
          title: new Text(
            "Between rectum and urinary bladder (rectovesical fistula)",
          ),
        ),
        ListTile(
          title: new Text(
            "Neural crest disease",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Congenital Aganglionic Megacolon (Hirschsprung's Disease)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg45,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Absence of ganglion cells in a distal segment of colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Aganglionic segment is normal in size",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Megacolon is the part proximal to aganglionic segment",
          ),
        ),
        ListTile(
          title: new Text(
            "Colonic diseases",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Colonic volvulus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg46,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Abnormal twisting of a part of the large intestine",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Common in sigmoid colon",
          ),
        ),
        ListTile(
          title: new Text(
            "Colorectal surgeries",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg47,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg48,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Removal of part of colon is called colectomy \nThe adjacent diagram represents various types colectomies and colon resection",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Colostomy",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg49,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Surgical procedure used to divert one end or a loop of the large intestine out through the wall of the abdomen",
          ),
        ),
        ListTile(
          title: new Text(
            "Surgeons corner",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg50,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "White line of Toldt",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "While mobilizing descending colon, peritoneum is incised along left",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The most vulnerable anatomic entities are the left ureter and the left gonadal vessels.",
            style: TextStyle(fontWeight: FontWeight.bold),
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
                CupertinoPageRoute(builder: (context) => HomeMaterial()))
          },
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Text("Finish", style: TextStyle(color: Colors.white)),
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
