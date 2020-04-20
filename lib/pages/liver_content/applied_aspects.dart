import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

import '../../form_page.dart';

class AppAspLiverPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Applied Aspects and Importance of Liver",
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
            "Importance",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver35,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Liver is the most common site of secondary tumors after the regional lymph nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Metastasis to liver changes the staging and prognosis of cancer",
          ),
        ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Hepatic lobule architecture consists of central portal vein and peripheral portal triad consisting of portal vein, hepatic artery and bile duct which can be identified",
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Enlargement Of Liver",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver36,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Hepatomegaly",
          ),
        ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Portal lobule",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Hepatic acinus",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "On deep inspiration - inferior border is felt during per abdominal examination",
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Liver Span",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver37,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Normally upper border of the liver dullness is located between right 5th and 7th intercostal spaces",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Normal liver span is 6 – 12 cm",
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Text(
        //     "Secondary Cancers",
        //     style: TextStyle(fontSize: 30.0, color: Colors.red),
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "A triangular unit consisting of central vein and peripheral portal triads",
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Secondary Cancers",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver38,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Liver is the most common site of secondary metastasis of a cancer after the regional lymph nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cancer spreading to the liver changes the stage and prognosis of the cancer",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Bare Area of Liver",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.liver32,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Site of portocaval anastomosis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Amoebic hepatic infection can spread to thorax through this region",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Needle Biopsy Of Liver",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.liver39,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Needle is inserted in the midaxillary line through 9th or 10th intercostal space",
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
