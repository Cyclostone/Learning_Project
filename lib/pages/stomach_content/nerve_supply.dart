import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/evaluation_stomach.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class NervePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Nerve Supply",
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
            Images.stomach31,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Parasympathetic nerve supply is \nby the vagus nerves – \nanterior(left) and posterior(right)"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Sympathetic innervation is \nthrough the splanchnic nerves and \nthe cardiac plexus (T6 to T10)"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Sympathetics are vasomotor, \nmotor to pyloric sphincter and \ninhibitory to the remaining gastric \nmusculature. It is the chief pain \npathway from the stomach"),
        ),
        ListTile(
          title: new Text(
            "Anterior Vagal Trunk",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text("1. Hepatic division"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Enters liver"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Pyloric branch supplies pylorus and first part of duodenum"),
        ),
        ListTile(
          title: new Text("2. Anterior gastric division"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Along lesser curvature of stomach"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Divides into 4 to 10 branches"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Supplies anterior wall of stomach "),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Also called as anterior nerve of Latarjet"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Ends at incisura angularis by \nforming crow’s foot appearance"),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach32,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Distribution of anterior gastric and hepatic \ndivisions of vagus. A, \"Typical\" distribution. B, \nDuplication of anterior gastric division (nerve \nof Latarjet). C, Separation of anterior gastric \ndivision into superior and inferior \nportions (specimen with carcinoma). D, Antral \ninnervation from pyloric branch of hepatic \ndivision. E, Multiple nerves of hepatic division \neach contribute to descending pyloric branch.",
          ),
        ),
        ListTile(
          title: new Text("Posterior Vagal Trunk",
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ListTile(
          title: new Text("1. Celiac division"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Passes through celiac plexus"),
        ),
        ListTile(
          title: new Text("2. Posterior gastric division"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Supplies posterior wall of stomach"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "principal posterior nerve of the \nlesser curvature is referred as \nposterior nerve of Latarjet"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Most cranial branch from \nposterior trunk is \"criminal nerve\" \nof Grassi"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Failure to divide this nerve during \nan acid-reducing surgery can lead \nto recurrent ulcers"),
        ),
        ListTile(
          title: new Text(
              "Variations in this branching and supply \npattern are common"),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach33,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
              "Distribution of posterior gastric and celiac \ndivisions of vagus. A, Usual pattern. Nerve of \nLatarjet springs from the celiac division. The \ncranial most branch from the posterior trunk is \n\"criminal nerve\" of Grassi. B, Absence of \nposterior nerve of Latarjet. Pylorus well \ninnervated posteriorly"),
        ),
        ListTile(
          title: new Text(
            "Importance - Vagotomy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach34,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach35,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach36,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Vagotomy (nerves to be preserved are in \nblack). \nA, Truncal vagotomy. \nB, Selective vagotomy. \nC, Parietal cell or proximal gastric vagotomy.",
          ),
        ),
        ListTile(
          title: new Text(
            "It is cutting of the vagus nerve to reduce \nthe gastric acid secretion in cases of \nsevere peptic ulcer disease. However, with \navailability of powerful acid secretion \ncontrol drugs the need for vagotomy is \ndecreasing",
          ),
        ),
        ListTile(
          title: new Text(
            "A. Truncal vagotomy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Division of the main trunk of the \nvagus"),
        ),
        ListTile(
          title: new Text(
            "B. Selective vagotomy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Division of the anterior and \nposterior gastric nerves of Latarjet \nonly"),
        ),
        ListTile(
          title: new Text(
            "C. Highly selective vagotomy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Denervation of only the fundus \nand body (parietal cell-containing \nareas) of the stomach (also called \nparietal cell vagotomy)"),
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => EvalStoPage()))
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
