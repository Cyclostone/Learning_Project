import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/function_stomach2.dart';
import 'package:learning_platform_app/pages/stomach_content/parietalcells_interiorstomach1.dart';

class FuncStoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Functions of Stomach and Gastric Emptying",
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
          height: MediaQuery.of(context).size.height * 0.3,
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
            Images.stomach17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Mechanical",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Storage"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Formation of chyme: semisolid \nmixture of food and gastric \nsecretions "),
        ),
        ListTile(
          title: new Text(
            "Digestive",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Pepsin and renin lyse the proteins"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Lipase hydrolyses fats"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Amylase digests carbohydrates"),
        ),
        ListTile(
          title: new Text(
            "Secretory",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach18,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Chief cells - Pepsinogen, Rennin, \nLipase"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Parietal cells - Hydrochloric acid \nand Intrinsic factor"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Mucous neck cells - Mucin"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("G cells - Gastrin"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Enterochromaffin cells - Serotonin"),
        ),
        ListTile(
          title: new Text(
            "Gastric Motility and Emptying",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach20,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: new Text(
            "Receptive relaxation",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Fundus relaxes with the entry of \nfood"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Mediated by vagus nerve"),
        ),
        ListTile(
          title: new Text(
            "Gastric peristalsis",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Begins in the lower portion of the \nbody"),
        ),
        ListTile(
          leading: new MyBullet(),
          title:
              new Text("Controlled by the gastric basal \nelectrical rhythm"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Sweep the contents towards \npylorus"),
        ),
        ListTile(
          title: new Text(
            "Antral systole",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Contraction of the distal stomach"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Three to four times per minute"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Partial contraction of antrum \nahead of the advancing gastric \ncontents prevents solids from \nentering duodenum"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("This mixes and crushes the gastric \ncontents"),
        ),
        SizedBox(
          height: 15,
        ),
        ListTile(
          title: new Text(
            "Note: Gastric emptying time – depends on \nthe type of food. Shortest for the liquids \n(10 to 30 min) and longest for fat rich food",
            style: TextStyle(fontWeight: FontWeight.bold),
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
                context, CupertinoPageRoute(builder: (context) => GasEmpPage()))
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
                "Functions",
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
