import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/duodenum_content/suspensory_muscle_treitz_duodenal_fixation1.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class FourthPartPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Fourth part of duodenum",
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
            Images.duodenum15,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Runs upwards",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Also called ascending part",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Related up to the body of  L2 vertebra",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Continuous with jejunum at duodenojejunal flexure",
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
            Images.duodenum16,
            fit: BoxFit.fitHeight,
          ),
        ),
        // Container(
        //   margin: EdgeInsets.all(10),
        //   child: Table(
        //     border: TableBorder.all(),
        //     children: [
        //       TableRow(children: [
        //         Text("Part of D2",
        //             style: TextStyle(fontWeight: FontWeight.bold)),
        //         Text("Develops from",
        //             style: TextStyle(fontWeight: FontWeight.bold)),
        //         Text("Artery supplying",
        //             style: TextStyle(fontWeight: FontWeight.bold)),
        //       ]),
        //       TableRow(children: [
        //         Text("Upper half"),
        //         Text("Foregut"),
        //         Text("Celiac trunk"),
        //       ]),
        //       TableRow(children: [
        //         Text("Lower half"),
        //         Text("Midgut"),
        //         Text("Superior mesentric artery"),
        //       ]),
        //       // TableRow(children: [
        //       //   Text("Ascending part"),
        //       //   Text("D4"),
        //       //   Text("Fourth"),
        //       //   Text("1 inch"),
        //       // ]),
        //     ],
        //   ),
        // ),
        // ListTile(
        //   title: new Text(
        //     "Relations",
        //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.duodenum12,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        ListTile(
          title: new Text(
            "Anteriorly",
            style: TextStyle(fontWeight: FontWeight.bold),
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
          title: new Text(
            "Posteriorly",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left psoas muscle",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left sympathetic chain",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left gonadal vessels",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inferior mesenteric vein",
          ),
        ),
        ListTile(
          title: new Text(
            "Superiorly",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Body of pancreas",
          ),
        ),
        ListTile(
          title: new Text(
            "Right side",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Upper part of root of mesentery",
          ),
        ),
        ListTile(
          title: new Text(
            "Left side",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left kidney and left ureter",
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
                CupertinoPageRoute(builder: (context) => SuspMusc1Page()))
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
