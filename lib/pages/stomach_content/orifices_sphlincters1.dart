import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/orifices_sphlincters2.dart';

class OriPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Orifices and Sphincters",
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
            Images.stomach4,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Cardiac orifice",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Junction of esophagus with stomach"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Surface marking: cardiac orifice lies behind the left 7th costal cartilage, 2.5 cm from the midline"),
        ),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: new Text(
            "Pyloric orifice",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Junction of stomach and first part of duodenum"),
        ),
        ListTile(
          title: new Text(
              "Surface marking: pyloric orifice \nlies 2.5 cm to the right of the \nmidline of the transpyloric plane."),
        ),
        ListTile(
          title: new Text(
            "Greater curvature",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Identification during surgery: \npyloric orifice is indicated by \nprepyloric vein of Mayo "),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Note: Both these orifices are not \nwater tight"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Stomach contents can escape to \nfirst part of duodenum"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "This is the basis of first part of \nduodenum being the most \ncommon site of Peptic Ulcer \nDisease (PUD)"),
        ),
        ListTile(
          title: new Text("Note: Both these orifices are not \nwater tight"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "How to hold the dissected (isolated) \nspecimen of stomach in anatomical \nposition? "),
        ),
        ListTile(
          leading: new MyBullet(),
          title:
              new Text("Pyloric orifice is harder than the \ncardiac orifice"),
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
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => SphlinctPage()))
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
                "Orfices",
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
