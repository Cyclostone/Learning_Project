import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class RelPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Relations and Peritoneal Attachments",
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
          height: MediaQuery.of(context).size.height * 0.3,
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
        ListTile(
          title: new Text(
            "Anterior Relations:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left lobe of liver and quadrate \nlobe of liver"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Anterior abdominal wall"),
        ),
        ListTile(
          title: new Text("Gastric triangle"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left costal margin"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Lower border of liver"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Transverse colon"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Gastrostomy* is performed in this \narea"),
        ),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: new Text(
            "Gastrostomy is the creation of an \nartificial external opening into the \nstomach for nutritional support or gastric \ndecompression ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Posterior Relations",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title:
              new Text("Also called stomach bed; structures \nforming it are:"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Pancreas"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left kidney",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left suprarenal"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Transverse colon"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left colic flexure"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left crus and part of diaphragm"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Splenic artery and spleen",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Importance: Pancreatic fluid collections impinge on the posterior surface of stomach",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Mnemonic: Let kids cross the street (and \ndon’t) panic let = left",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach11,
            fit: BoxFit.fitHeight,
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
                context, CupertinoPageRoute(builder: (context) => PerPage()))
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
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Relations",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            bottomContentText,
            SizedBox(height: 200),
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
