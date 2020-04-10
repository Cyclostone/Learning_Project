import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/duodenum_content/blood_supply_lymphatic_drainage_innervation.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class IntDuodoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Interior of Duodenum",
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Numerous mucosal folds present in all parts except proximal duodenal \nampulla",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Also called valves of Kerckring or plica circulares",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Major duodenal papilla (papilla of Vater)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "The T arrangement of duodenal mucosal folds indicating the site of the major duodenal \npapilla",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Seen in the second part of duodenum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nipple-like formation and projection of the duodenal mucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Distal end of the ampulla of vater passes into the duodenum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ampulla of vater (hepatopancreatic) - is the union of the pancreaticobiliary ducts",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posteromedial wall of the second part of the duodenum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Distance from the pylorus varies from 7 to 10 cm",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The T arrangement of duodenal mucosal folds indicating the site of the major \nduodenal papilla",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Ampulla (of Vater)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Variations in the relation of the common bile duct and main pancreatic duct at the duodenal papilla ",
          ),
        ),
        ListTile(
          title: new Text(
            "A. Minimal absorption of the ducts into the duodenal wall during embryonic development; an ampulla is \npresent.",
          ),
        ),
        ListTile(
          title: new Text(
            "B. Maximum absorption of the ducts into the duodenum. There are separate orifices on the papilla; no ampulla \nis present.",
          ),
        ),
        ListTile(
          title: new Text(
            "C. Partial absorption of the common channel; no true ampulla is present.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The ampulla is a dilatation of the common pancreaticobiliary channel within the papilla \nand below the junction of the two ducts",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "True dilated ampulla is present in about 75 percent individuals of type A, and is absent in \ntypes B and C",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Sphincter of Boyden/ Sphincter of Oddi",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sphincteric complex composed of circular muscle fibers, found around the intramural \npart of the common bile duct, the main pancreatic duct, and the ampulla",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Four sphincters make up the sphincter of Boyden",
          ),
        ),
        ListTile(
          title: new Text(
            "1. Superior choledochal sphincter",
          ),
        ),
        ListTile(
          title: new Text(
            "2. Inferior (submucosal) choledochal sphincter",
          ),
        ),
        ListTile(
          title: new Text(
            "3. Sphincter ampullae (papillae)",
          ),
        ),
        ListTile(
          title: new Text(
            "4. Pancreatic sphincter",
          ),
        ),
        ListTile(
          title: new Text(
            "Eponymous note:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sphincter was originally detailed by Glissons.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Oddi reported Glisson's work.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Boyden gave more structural details of the sphincter.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Therefore it may be more apt to call it the sphincter of Boyden.",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Minor Duodenal Papilla",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.duodenum24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Accessory pancreatic duct (Santorini) opens through minor papilla",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located about 2 cm cranial and slightly anterior to the major papilla",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Smaller and not easily identifiable",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "In few (<10%) of individuals accessory pancreatic duct is the sole duct of pancreas",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Duodenal \"Sphincters\"",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "1. Gastroduodenal pyloric sphincter",
          ),
        ),
        ListTile(
          title: new Text(
            "2. First duodenal sphincter – at distal end of duodenal ampulla; related for “megabulb”",
          ),
        ),
        ListTile(
          title: new Text(
            "3. Sphincter of Villemin is proximal to the ampulla of Vater",
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
                CupertinoPageRoute(builder: (context) => BloodSupPage()))
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
                "Mucosal Folds",
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
