import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/stomach_content/introduction.dart';

import 'introduction_etymology.dart';

class DuoDetailPage extends StatelessWidget {
  final String title;
  DuoDetailPage({Key key, this.title}) : super(key: key);

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
      "1.Introduction and Etymology \n2.Location, Shape and Length \n3.Parts and Names and Development \n4.First part of duodenum \n5.Second part of duodenum \n6.Third part of duodenum \n7.Fourth part of duodenum \n8.Suspensory muscle (ligament) of Treitz and Duodenal Fixation \n9.Peritoneal Relations and Duodenal Bare Area \n10.Interior of Duodenum \n11.Blood Supply, Lymphatic Drainage and Innervation \n12.Histology \n13.Functions of duodenum \n14.Applied Aspects \n15.Evaluation of duodenum",
      style: TextStyle(fontSize: 18.0),
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => IntroEtymo()))
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
            SizedBox(height: 80),
            readButton,
          ],
        ),
      ),
    );

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              topContent,
              Container(
                color: Colors.teal,
              ),
              bottomContent
            ],
          ),
        ),
      ),
    );
  }
}
