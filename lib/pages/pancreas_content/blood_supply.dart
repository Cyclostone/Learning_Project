import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/palate_content/soft_palate.dart';
import 'package:learning_platform_app/pages/pancreas_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class BloodSupPancreasPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood supply, lymphatics and duct system",
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
          height: MediaQuery.of(context).size.height * 0.29,
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
            "Arterial Supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pancreas7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Branches of celiac trunk and superior mesenteric artery",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Branches of celiac trunk and superior mesenteric artery",
          ),
        ),
        ListTile(
          title: new Text(
            "Splenic artery",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Supplies body, neck and tail",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Run along the upper border",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Splenic artery is tortuous - Not a universal phenomenon.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Probable reasons - to accommodate the movement of spleen during respiration and expansion of the stomach",
          ),
        ),
        ListTile(
          title: new Text(
            "Superior and inferior pancreaticoduodenal arteries",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Related to head of pancreas",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Venous drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pancreas8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anterior and posterior pancreaticoduodenal veins",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drains into the portal vein \nSplenic vein runs within the substance of the pancreas (body and tail)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Many tributaries including inferior pancreatic vein drains into the splenic vein",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pancreas9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Follow arteries and drain to",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pancreaticosplenic group",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Coeliac group",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superior mesenteric nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pyloric group of lymph nodes",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Duct system",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pancreas10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Major pancreatic duct - Duct of Wirsung",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Joins common bile duct before piercing the duodenal wall",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sphincter of Oddi guards these ducts",
          ),
        ),
        ListTile(
          title: new Text(
            "Minor pancreatic duct - Duct of Santorini",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Not a common feature in all",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Can either drain into duodenum (70%) or drain into the main pancreatic duct (30%)",
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
                CupertinoPageRoute(builder: (context) => MicroPancreasPage()))
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
