import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/nerve_supply.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class BloPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood Supply and Lymphatic Drainage",
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
        ListTile(
          title: new Text(
            "Arterial Supply",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text("Foregut artery – celiac trunk supplies \nstomach "),
        ),
        ListTile(
          title: new Text("1. left gastric artery"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("branch of celiac trunk"),
        ),
        ListTile(
          title: new Text("runs along the lesser curvature"),
        ),
        ListTile(
          title: new Text("2. Right gastric artery"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Branch of common hepatic artery"),
        ),
        ListTile(
          title: new Text("3. Left gastroepiploic artery"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Branch of splenic artery"),
        ),
        ListTile(
          title: new Text("4. Right gastroepiploic artery"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Branch of superior duodenal \nartery"),
        ),
        ListTile(
          title: new Text("5. short gastric arteries "),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Branches of splenic artery"),
        ),
        ListTile(
          title: new Text(
            "Venous Drainage",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text("1. left gastric vein"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Drains into the portal vein"),
        ),
        ListTile(
          title: new Text("2. right gastric vein"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Drains into the portal vein"),
        ),
        ListTile(
          title: new Text("3. left gastroepiploic vein"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Drains into splenic vein"),
        ),
        ListTile(
          title: new Text("4. right gastroepiploic vein"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Drains into superior mesenteric vein"),
        ),
        ListTile(
          title: new Text("5. short gastric veins"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Drains into the splenic vein"),
        ),
        ListTile(
          title: new Text(
            "Lymphatic Drainage",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach26,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Most of the lymphatic drainage of the \nstomach finds its way to the celiac \nnodes",
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                Column(
                  children: <Widget>[
                    Text('Zones of lymph nodes',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Nodes', style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: <Widget>[Text("Zone I (inferior gastric)")],
                ),
                Column(
                  children: <Widget>[
                    Text(
                        "Nodes around right gastroepiploic and gastroduodenal arteries \nto nodes around hepatic artery to celiac nodes")
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: <Widget>[Text("Zone II (splenic)")],
                ),
                Column(
                  children: <Widget>[
                    Text(
                        "Nodes around left gastroepiploic and short gastric arteries to \npancreaticosplenic nodes to splenic artery nodes to celiac \nnodes")
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: <Widget>[Text("Zone III (superior gastric)")],
                ),
                Column(
                  children: <Widget>[
                    Text("Nodes around left gastric artery to celiac nodes")
                  ],
                ),
              ]),
              TableRow(children: [
                Column(
                  children: <Widget>[Text("Zone IV (hepatic)")],
                ),
                Column(
                  children: <Widget>[
                    Text("Nodes around right gastric artery to celiac nodes")
                  ],
                ),
              ]),
            ],
          ),
        ),
        ListTile(
          title: new Text('Drainage Pathways',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach27,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
              "Arrows indicate that most of the drainage finds its way to the celiac nodes"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Zone I (inferior gastric) drains into the subpyloric and omental nodes"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Zone II (splenic) drains into the pancreaticosplenic nodes"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Zone III (superior gastric) drains into the superior gastric nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Zone IV (hepatic) drains into the suprapyloric nodes",
          ),
          subtitle: new Text(
              "Lymphatic drainage follows the \narteries of the stomach or \nparallels gastric venous return.\n\n Metastases are not confined to \nthe nodes draining a single zone"),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Japanese Research Society for Gastric \nCancer assigned a number to each \nlymph node station to aid the \npathological staging",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach28,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach29,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach30,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Lymphatic drainage of the stomach and \nnodal stations according to the Japanese \nclassification",
          ),
        ),
        ListTile(
          title: new Text(
            "(a) anterior view\n (b) posterior view ",
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
                context, CupertinoPageRoute(builder: (context) => NervePage()))
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
