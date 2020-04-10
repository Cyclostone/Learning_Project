import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/divisions_capacity_surfaces2.dart';

class DivPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Divisions, Capacity and Surfaces",
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
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach6,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Divided into 4 parts",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "Fundus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Part above the horizontal line at \nthe level of cardiac orifice"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Air accumulation in the fundus of \nthe stomach is responsible for \nfundic gas shadow in normal erect \nX-rays"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Traube space: area over the \nfundus of the stomach that is \ntympanic on percussion over the \nanterior abdominal wall"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Boundaries"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left sixth rib (lower margin of left \nlung)"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Left midaxillary line (beyond this \nline – spleen is located)"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Left costal margin"),
        ),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: new Text(
            "Body",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Portion above the line joining the \nincisura and greater curvature"),
        ),
        ListTile(
          title: new Text("Secretes mucus, pepsinogen and \nHCl"),
        ),
        ListTile(
          title: new Text(
            "Pyloric antrum",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Proximal wide portion separated \nby inconsistent sulcus intermedius"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("About 3 cm long"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Secretes mucus, pepsinogen and \ngastrin"),
        ),
        ListTile(
          title: new Text(
            "Pyloric antrum",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Proximal wide portion separated \nby inconsistent sulcus intermedius"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("About 3 cm long "),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Secretes mucus, pepsinogen and \ngastrin"),
        ),
        ListTile(
          title: new Text(
            "Pyloric canal",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Distal narrow 3 cm of the pyloric \nregion"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Hold the harder pyloric orifice in \nthe left hand and other cardiac \norifice in the right hand in such a \nway – larger greater curvature is \non left side"),
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => CapSurPage()))
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
                "Divisions",
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
