import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

import '../../form_page.dart';

class AppAspPage extends StatelessWidget {
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
        ListTile(
          title: new Text(
            "Peptic Ulcer Disease (PUD)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach40,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "It is the discontinuity in the inner \nlining of the stomach, first part of \nduodenum and rarely lower part \nof esophagus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "PUD encompasses both gastric \nand duodenal ulcers",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gastric infection with the \nbacterium H. pylori accounts for \nmajority of PUD",
          ),
        ),
        ListTile(
          title: new Text(
            "Gastric cancer",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach41,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gastric carcinoma is the second \nleading cause of cancer-related \ndeaths in the world",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Japan and South Korea have the \nhighest incidence",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Advanced gastric cancers \npenetrate the wall of stomach and \nspread to distant lymph nodes.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Spread to supraclavicular lymph \nnode is referred as Virchow node",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Spread of gastric cancer to ovary is \ncalled Krukenberg tumor",
          ),
        ),
        ListTile(
          title: new Text(
            "Munna Bhai MBBS",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach42,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Munna Bhai, MBBS (2003) Jimmy \nShergill’s character Zaheer dies of \nstomach cancer",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gastric cancer is the fifth most \ncommon cancer among males in \nIndia",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "5 year survival rate is 31% (US \ndata) ",
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
          child: Text("FINISH", style: TextStyle(color: Colors.white)),
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
            //     "Arterial Supply",
            //     style: TextStyle(
            //       fontSize: 30.0,
            //     ),
            //   ),
            // ),
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
