import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class AppAspJIPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Applied Aspects",
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
            "Evaluation of jejunum and ileum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Barium follow through",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Barium study where an X-ray is taken after barium reach the small intestine",
          ),
        ),
        ListTile(
          title: new Text(
            "Capsule endoscopy",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Procedure used to record internal images of the gastrointestinal trac",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Developmental anomalies",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Jejunoileal atresia and stenosis",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "May be complete or partial",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "May be associated with cystic fibrosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Atresia and stenosis may be of varying extent",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Meckel’s diverticulum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Remnant of the proximal portion of the yolk stalk",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "May be connected to the umbilicus by a fibrous cord that may be patent",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ileo-umbilical fistula",
          ),
        ),
        ListTile(
          title: new Text(
            "Rule of 2",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is present in 2% of general population",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located 2 ft proximal to ileocecal junction",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Usually 2 inches in length",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Symptomatic in 2% of the individuals",
          ),
        ),
        ListTile(
          title: new Text(
            "Major types of Meckel’s diverticulum",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Diverticulum with free end not attached to body wall",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Diverticulum connected with the anterior body wall by a fibrous cord",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Fistula opening through the umbilicus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Typhoid ulcers",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji25,
            fit: BoxFit.fitHeight,
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Intestinal glands",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "As the Peyer’s patches are located in antimesenteric border of the intestine; in typhoid fever, longitudinal ulcers may be found on antimesenteric border",
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Paneth cells",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Typhoid ulcers after healing do not result in stricture formation",
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
                context,
                CupertinoPageRoute(
                    builder: (context) =>
                        ListPage(title: 'ANATOMY OF ABDOMEN')))
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
