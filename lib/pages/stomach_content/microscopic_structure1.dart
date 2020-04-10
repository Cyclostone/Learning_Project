import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/stomach_content/function_stomach1.dart';

class MicStrPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Microscopic Structure",
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
            Images.stomach13,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach14,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
              "Has 4 layers (like any other part of \ngastrointestinal tract)"),
        ),
        ListTile(
          title: new Text(
            "Mucosa",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Columnar epithelium"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("With simple and tubular glands"),
        ),
        ListTile(
          title: new Text(
            "Submucosa",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Loose areolar tissue"),
        ),
        ListTile(
          title: new Text(
            "Muscular layer",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Inner oblique layer"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Middle circular fibres"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Outer longitudinal fibres"),
        ),
        ListTile(
          title: new Text(
            "Serosa",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text("Formed by peritoneum"),
        ),
        ListTile(
          title: new Text(
            "Stomach-Fundus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach15,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Numerous mucosal foldings with \ngastric pits are present towards \nthe lumen. Gastric pits are not \ndeep. They extend into the \nmucosa coat about one-fourth of \nits thickness"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Mucosa has gastric glands with \nacidophilic parietal cells located in \nthe upper part and basophilic \nchief (zymogenic) cells located in \nthe lower regions"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Thin strands of smooth muscles \nfrom muscularis mucosa extend \ninto the lamina propria between \nthe gastric glands"),
        ),
        ListTile(
          title: new Text(
            "Stomach - Pylorus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.stomach16,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
              "Numerous mucosal foldings with \ngastric pits are present towards \nthe lumen. Gastric pits are deep. \nThey extend into the mucosa coat \nabout half or more of its thickness"),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mucosa has simple branched \ngastric glands. Epithelium of \ngastric glands is tall columnar with \ngranular cytoplasm stains lightly \nbecause of mucinogen content.",
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Posterior Relations",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.stomach10,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        // ListTile(
        //   title:
        //       new Text("Also called stomach bed; structures \nforming it are:"),
        // ),

        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text("Left suprarenal"),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text("Transverse colon"),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text("Left colic flexure"),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text("Left crus and part of diaphragm"),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //     "Splenic artery and spleen",
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //       "Importance: Pancreatic fluid collections impinge on the posterior surface of stomach",
        //       style: TextStyle(fontWeight: FontWeight.bold)),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //       "Mnemonic: Let kids cross the street (and \ndon’t) panic let = left",
        //       style: TextStyle(fontWeight: FontWeight.bold)),
        // ),
        // Container(
        //   padding: EdgeInsets.all(20),
        //   child: Image.asset(
        //     Images.stomach11,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text("About 3 cm long "),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text("Secretes mucus, pepsinogen and \ngastrin"),
        // ),
        // ListTile(
        //   title: new Text(
        //     "Pyloric canal",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text("Distal narrow 3 cm of the pyloric \nregion"),
        // ),
        // ListTile(
        //   leading: new MyBullet(),
        //   title: new Text(
        //       "Hold the harder pyloric orifice in \nthe left hand and other cardiac \norifice in the right hand in such a \nway – larger greater curvature is \non left side"),
        // ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => FuncStoPage()))
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
            //     "Relations",
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
