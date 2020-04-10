import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/duodenum_content/third_part_of_duodenum.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class SecPartPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Second part of duodenum",
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Receives common bile duct and pancreatic duct",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Intimately related to the curvature of the head of pancreas",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Only part of intestine with double vasa recta which arise from the anterior and posterior \npancreaticoduodenal arteries",
          ),
        ),
        ListTile(
          title: new Text(
            "Note: Vasa recta are straight arteries coming off from arcades in the mesentery of the jejunum \nand ileum, and heading toward the intestines",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Development",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum11,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                Text("Part of D2",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Develops from",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Artery supplying",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
              TableRow(children: [
                Text("Upper half"),
                Text("Foregut"),
                Text("Celiac trunk"),
              ]),
              TableRow(children: [
                Text("Lower half"),
                Text("Midgut"),
                Text("Superior mesentric artery"),
              ]),
              // TableRow(children: [
              //   Text("Ascending part"),
              //   Text("D4"),
              //   Text("Fourth"),
              //   Text("1 inch"),
              // ]),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Relations",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum12,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Anteriorly",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gallbladder",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Liver",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Transverse colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Transverse mesocolon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Coils of jejunum",
          ),
        ),
        ListTile(
          title: new Text(
            "Posteriorly",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right kidney",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right renal vessels",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferior vena cava",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right psoas muscle",
          ),
        ),
        ListTile(
          title: new Text(
            "Medially",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Head of pancreas",
          ),
        ),
        ListTile(
          title: new Text(
            "Laterally",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Liver",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hepatic flexure of colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ascending colon",
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
                CupertinoPageRoute(builder: (context) => ThirdPartPage()))
          },
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Text("NEXT", style: TextStyle(color: Colors.white)),
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
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Features",
                style: TextStyle(fontSize: 30.0, color: Colors.red),
              ),
            ),
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
