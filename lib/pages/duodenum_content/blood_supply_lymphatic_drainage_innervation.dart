import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/duodenum_content/histology.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class BloodSupPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood Supply, Lymphatic Drainage and Innervation",
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Upper part from branches of celiac trunk",
          ),
        ),
        ListTile(
          title: new Text(
            "1. Superior pancreaticoduodenal artery - a branch of gastroduodenal artery",
          ),
        ),
        ListTile(
          title: new Text(
            "2. Inferior pancreaticoduodenal artery - a branch of superior mesenteric artery \nEach of these arteries form anterior and posterior arterial arcades",
          ),
        ),
        ListTile(
          title: new Text(
            "3. Supraduodenal artery of Wilkie - a branch of gastroduodenal artery supplying \nanterosuperior and posterosuperior surfaces of first part",
          ),
        ),
        ListTile(
          title: new Text(
            "4. Retroduodenal branches of gastroduodenal artery",
          ),
        ),
        ListTile(
          title: new Text(
            "5. Branches from hepatic artery",
          ),
        ),
        ListTile(
          title: new Text(
            "6. Branches from right gastroepiploic artery",
          ),
        ),
        ListTile(
          title: new Text(
            "7. Artery from first jejunal branch of superior mesenteric artery",
          ),
        ),
        ListTile(
          title: new Text(
            "Note: Ligating both superior and inferior pancreaticoduodenal arteries \nsimultaneously results in lack of blood supply to the duodenum as well as head \nof pancreas ",
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Venous Drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum26,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Like arterial arcades, anterior and posterior pancreaticoduodenal venous arcade \nexists.",
          ),
        ),
        ListTile(
          title: new Text(
            "Blood from duodenum drains into",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "splenic vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "superior mesenteric vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "portal vein",
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic Drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum27,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Duodenum is richly supplied with lymphatics",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Most drain into pancreaticoduodenal lymph nodes 🡪 pyloric nodes 🡪 celiac \ngroup",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superior mesenteric group of lymph nodes",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Innervation",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Meissner plexus in submucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Auerbach plexus in the connective tissue between the circular and longitudinal \nlayers of muscularis externa",
          ),
        ),
        ListTile(
          title: new Text(
            "Extrinsic nerve supply",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vagus carries parasympathetic fibres",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "T6 to T12 supply sympathetic fibres via celiac and superior mesenteric ganglia",
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
                context, CupertinoPageRoute(builder: (context) => HistPage()))
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
                "Arterial Supply",
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
