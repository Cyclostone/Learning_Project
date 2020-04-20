import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/stomach_content/introduction.dart';

import 'definition.dart';

class AnoDetailPage extends StatelessWidget {
  final String title;
  AnoDetailPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: new BoxDecoration(
                // image: new DecorationImage(
                //   image: new AssetImage("drive-steering-wheel.jpg"),
                //   fit: BoxFit.cover,
                // ),
                )),
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
        )
      ],
    );

    final bottomContentText = Text(
      "1.Definition \n2.Junction between rectum and anal canal \n3.Curvatures and Reflections \n4.Relations and Spaces \n5.Interior of anorectum \n6.Changes at pectinate line \n7.Blood supply, nerve supply and lymphatic drainage of anorectum \n8.Defecation and continence \n9.Applied aspects", 
      style: TextStyle(fontSize: 18.0),
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => DefAnoPage()))
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
                "Index",
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
      body: Column(
        children: <Widget>[
          topContent,
          Container(
            color: Colors.teal,
          ),
          bottomContent
        ],
      ),
    );
  }
}
