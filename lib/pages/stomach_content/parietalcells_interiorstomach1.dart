import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/parietalcells_interiorstomach2.dart';
import 'package:url_launcher/url_launcher.dart';

class ParCelPage extends StatelessWidget {
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
        ListTile(
          title: new Text(
            "Parietal Cells",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach21,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Cells of fundic gastric glands that \nsecrete Hydrochloric acid and \nintrinsic factor"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Canaliculi – meshwork present \nwithin the parietal cells"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Hydrogen potassium ATPase \n(H+/K+ ATPase) is unique to the \nparietal cells"),
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
              "It transports H+ ions against \nconcentration gradient"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Primarily regulated via histamine, \nacetylcholine and gastrin signalling"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Both central and local modulators \nregulate parietal cell functioning"),
        ),
        ListTile(
          title: new Text(
            "Importance",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.stomach18,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.stomach19,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Over-acidity in stomach – \npeptic ulcer disease"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Drugs like proton pump inhibitors \n(PPIs) (omeprazole) act on \nhydrogen potassium ATPase"),
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
                      launch('https://www.youtube.com/watch?v=XhB7WNJVg3U')),
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
                context, CupertinoPageRoute(builder: (context) => IntStoPage()))
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
                "Parietal Cells",
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
