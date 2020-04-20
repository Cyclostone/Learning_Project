import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/pharynx_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class PalantinePharynxPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Palatine tonsils",
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
            Images.pharynx41,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Collection of lymphatic tissue in the submucosa of oropharynx",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Part of Mucosa Associated Lymphatic Tissue (MALT)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Location",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "in the tonsillar fossa",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Boundaries of tonsillar fossa",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx42,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The tonsils lie between the two pillars",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "anterior pillar – palatoglossus muscle",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "posterior pillar – palatopharyngeus muscle",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lateral wall – tonsillar bed",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx43,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Formed by superior constrictor muscle",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Covered by pharyngobasilar fascia",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Separated by peritonsillar space",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Parts of palatine tonsil",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx44,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Upper pole – soft palate",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lower pole – tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Medial surface – free",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Non keratinized stratified epithelium",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Crypta magna – intratonsillar cleft",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lateral – deep surface",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Peritonsillar space",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Paratonsillar vein – implicated in bleeds post-tonsillectomy",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Crypta magna developmental significance",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx45,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Remnant of 2nd pharyngeal pouch",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Primary and secondary crypts increase the surface area of the lymphatic tissue",
          ),
        ),
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
            Images.pharynx46,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "1. Tonsillar branch of dorsal lingual artery",
          ),
        ),
        ListTile(
          title: new Text(
            "2. Tonsillar branch of ascending palatine artery",
          ),
        ),
        ListTile(
          title: new Text(
            "3. Tonsillar branch of ascending pharyngeal artery",
          ),
        ),
        ListTile(
          title: new Text(
            "4. Tonsillar branch of facial artery",
          ),
        ),
        ListTile(
          title: new Text(
            "5. Tonsillar branch of lesser palatine artery",
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
            Images.pharynx47,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Into the plexus around the tonsillar capsule",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Later blood drains into the lingual vein, and the pharyngeal plexus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Nerve supply",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx48,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Later blood drains into the lingual vein, and the pharyngeal plexus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tonsillar branch of Glossopharyngeal Nerve",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tonsillitis pain – referred to ear via glossopharyngeal nerve",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lymphatic drainage",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx49,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Deep cervical group",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Jugulodigastric nodes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tonsillar nodes",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Histology",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx50,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Surface is covered by a protective stratified squamous non-keratinized epithelium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Invaginated by deep grooves, called tonsillar crypts",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Underlying connective tissue has numerous lymphatic nodules",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Usually exhibit lighter staining germinal centers",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Development",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.pharynx51,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Develop from the second pharyngeal pouch",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The central cells in the proliferation degenerate and form the intratonsillar crypt.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Largest of such crypts is called crypta magna",
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
                CupertinoPageRoute(builder: (context) => AppAspPharynxPage()))
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
