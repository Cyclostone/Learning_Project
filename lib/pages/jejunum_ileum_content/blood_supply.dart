import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/development.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class BloodJIPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Blood supply, Lymphatic drainage and Nerve supply",
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
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Arterial supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Both these small intestinal parts are derived from midgut and hence supplied by branches of superior mesenteric artery (SMA)",
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "1.Mucosa",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Jejunal and ileal branches of SMA",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "12 – 15 in number",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Arise from left side of superior mesenteric artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ileocolic artery – arises from SMA",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ileal branches – arise from ileocolic artery and supply terminal part of ileum",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Arterial Arcades",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji8,
            fit: BoxFit.fitHeight,
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Intestinal glands (crypts of Lieberkuhn)",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Soon after the arteries enter the mesentery they divide and anastomose to form arterial arcades",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "They form primary anastomoses of the arterial supply",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Jejunum – has 1 or 2 arterial arcades",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ileum – has 3 or more arterial arcades",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Vasa recta",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji9,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "From the convexities of arterial arcades small straight arteries arise",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "They supply the intestine through mesenteric border",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "No collateral circulation between the vasa recta or their branches at the surface of the intestines",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Confusing points",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji11,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Vasa recta - These are the straight blood vessels (arterioles) related to medullary nephrons in kidney Specific terminology – vasa recta renis",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Note:",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "The arterial configuration of the intestine",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Rich oxygen supply for mesenteric border",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Poor oxygen supply for antimesenteric border",
          ),
        ),
        ListTile(
          title: new Text(
            "Implication:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "During surgery – it is better to open the bowel between mesenteric and antimesenteric border",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Venous drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji12,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Correspond to the branches of superior mesenteric artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Drain into the superior mesenteric vein and then to portal vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Responsible for intestinal motilityLess complex venous arcades are present",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatics",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lacteals – lymphatic vessels that arise in the intestinal villi",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Intramural: Lacteals -> mucosal vessels -> submucosal plexus -> subserosal plexus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Extramural: Vasa recta -> lymph nodes along the mesenteric vessels -> lymph nodes along the superior mesenteric artery and celiac artery -> cisterna chyli",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nerve supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Sympathetic innervation",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "T10-T11 spinal segments",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Through splanchnic nerves and superior mesenteric plexus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Motor to gut-sphincters",
          ),
        ),
        ListTile(
          title: new Text(
            "Parasympathetic innervation",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vagus nerve through celiac and superior mesenteric plexus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Stimulate peristalsis and inhibit sphincters",
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
                context, CupertinoPageRoute(builder: (context) => DevJIPage()))
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
