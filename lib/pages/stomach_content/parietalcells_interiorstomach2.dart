import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/bloodsupply_lymphaticdrainage1.dart';
import 'package:url_launcher/url_launcher.dart';

class IntStoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Parietal Cells and Interior of Stomach",
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
            Images.stomach23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Gastric rugae / gastric folds: \nnumerous folds of gastric mucosa; \nrugae gets flattened when \nstomach distends"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Gastric pits: small depressions on \nthe mucosal surface where gastric \nglands opens"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Longitudinal furrows on the lesser \ncurvature also called gastric \ncanal / Magentrasse"),
        ),
        // ListTile(
        //   title: new Text(
        //     "Digestive",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Ingested liquids are more likely to \npass along these longitudinal \nfurrows along lesser curvature."),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "In long term ingestion of spicy \nfood and in cases of corrosive \n(eg., kerosene) ingestion, \nmaximum effects are seen along \nthese longitudinal furrows."),
        ),
        ListTile(
          title: new Text("Upper GI endoscopy showing normal \nstomach"),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Material(
            color: Colors.redAccent,
            child: Center(
              child: new InkWell(
                  child: new Text('Open Video'),
                  onTap: () =>
                      launch('https://www.youtube.com/watch?v=elddQhIvKp4')),
            ),
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
                context, CupertinoPageRoute(builder: (context) => BloPage()))
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
                "Interior of Stomach",
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
