import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class HistJIPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Histology and Functions",
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
          padding: EdgeInsets.all(10),
          child: Text(
            "Jejunum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji16,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Permanent fold of the small intestine, called the plica circularis formed by both mucosa and submucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The intestinal glands (crypts of Lieberkuhn) are located in the lamina propria",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ileum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji17,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Aggregations of lymphatic nodules, called Peyer's patches are located in the wall of the ileum, opposite the mesentery attachment",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The lymphatic nodules usually coalesce and the boundaries between them become indistinct",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Most lymphatic nodules exhibit germinal centers",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Villi of small intestine",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji18,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "These are finger like mucosal extensions",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lined with simple columnar epithelium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Contain mucus-secreting goblet cells and absorptive cells with striated borders (microvilli)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Intestinal glands with paneth cells & enteroendocrine cells",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Intestinal glands",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located adjacent to muscularis mucosae",
          ),
        ),
        ListTile(
          title: new Text(
            "Paneth cells",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "These are pyramidal cells at the base of the glands which have large acidophilic granules",
          ),
        ),
        ListTile(
          title: new Text(
            "Enteroendocrine cells",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Have fine granules in the basal cytoplasm",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Also called as APUD (amine precursor uptake and decarboxylation) cells",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Functions",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Jejunum",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Secretion of mucus, peptidase, sucrase, maltase, lactase and intestinal lipase",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Absorption of digested food",
          ),
        ),
        ListTile(
          title: new Text(
            "Ileum",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Absorption of vitamin B12",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Absorption of bile salts",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Peyer’s patches function as the immune surveillance system",
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
                CupertinoPageRoute(builder: (context) => AppAspJIPage()))
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
