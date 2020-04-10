import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/structure_differences_ji.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class TermJIPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Terminology",
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
            Images.ji1,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Jejunum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Anatomy",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Etymology: jejunus = empty or fasting",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "That part of the intestine between duodenum and ileum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Includes proximal half (or two fifth) of the intestinal coils from duodenojejunal flexure to ileocecal junction",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji2,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ileum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Functional",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Etymology: from ileum, in medieval medicine \"the part of the small intestines in the region of the flank,\"",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "That part of the intestine between jejunum and cecum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Includes distal half (or three fifth) of the intestinal coils from duodenojejunal flexure to ileocecal \njunction",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ilium",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji3,
            fit: BoxFit.fitHeight,
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Surgery",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Etymology: ilia (pl.) \"groin, flank,\" in classical Latin, \"belly, the abdomen below the ribs,\"",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The upper and widest of the three bones that make up each side of the hip bone and pelvis",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Interesting facts: Ilium (Novel)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji4,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Ilium is a science fiction novel by American writer Dan Simmons. The first part of the Ilium/Olympos cycle concerns the re-creation of events in the Iliad on an alternate Earth and Mars.",
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
                CupertinoPageRoute(builder: (context) => StructJIPage()))
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
