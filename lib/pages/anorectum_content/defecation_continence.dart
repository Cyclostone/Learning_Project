import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/pages/anorectum_content/applied_aspects.dart';
import 'package:learning_platform_app/images.dart';

class DefeAnoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Defecation and continence",
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
            "Defecation",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano26,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano27,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Neural pathways involved in defecation",
          ),
        ),
        ListTile(
          title: new Text(
            "A.Rectal distension initiates relaxation of the internal sphincter and effective voluntary closure by the external sphincter.",
          ),
        ),
        ListTile(
          title: new Text(
            "B.Defecation with relaxation of both sphincters, contraction of muscles in the rectal wall, and increased intraabdominal pressure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Conscious physiological act in response to feeling the need to pass stool in the rectum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Distension of the rectum is the initial stimulus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Rise in pressure -> acts on mural receptors -> reflex contraction of the rectal musculature -> internal sphincter relaxes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mediated by the intrinsic nerves only",
          ),
        ),
        ListTile(
          title: new Text(
            "External sphincter",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "voluntary",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "normally in a state of contraction",
          ),
        ),
        ListTile(
          title: new Text(
            "Continence",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Recto-Anal Inhibitory Reflex or ‘RAIR’",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Attained by increasing contraction of the external sphincter",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Relaxing the rectal wall",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Second reflex from the distended rectal wall to the sacral cord",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Can be reinforced by voluntary effort",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Defecation mechanism",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ano28,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Openings of both rectal neck inlet and outlet relax",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Shortening of rectal neck",
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
                CupertinoPageRoute(builder: (context) => AppAspectsAnoPage()))
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
