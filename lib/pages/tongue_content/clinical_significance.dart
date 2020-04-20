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
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';
import 'package:learning_platform_app/pages/tongue_content/clinical_testing.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/positions_dev.dart';

class ClinicalSigTonguePage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Clinical significance",
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
          padding: EdgeInsets.all(10),
          child: Text(
            "Coated tongue",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue34,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "caused by debris, bacteria and dead cells getting lodged between the enlarged and sometimes inflamed papillae",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "The thickness of this coat - dependent upon the balance between the rate of production of epithelial cells and the rate at which the dead ones are worn away",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Largely influenced by activity such as eating and talking",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "A very sick person who is not eating or talking very much, is likely to have thick coat",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Vitamin deficiencies",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue35,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "riboflavin deficiency -  magenta tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "niacin deficiency (pellagra) - scarlet tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vitamin B12 deficiency - beefy-red, sore, and smooth with papillary atrophy",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Immunodeficiency",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue30,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Oral candidiasis (oral thrush) indicate severe immunodeficiency",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Aphthous ulcers",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.tongue37,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Small benign, non-contagious ulcers in the oral cavity",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Cause unknown – involve T cell mediated immune response",
          ),
        ),
        ListTile(
          title: new Text(
            "Factors influencing aphthous ulcers",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Nutritional deficiencies",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Local trauma",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Stress",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Systemic diseases manifested in tongue:",
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Macroglossia – may indicate amyloidosis, hypothyroidism",
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
                context,
                CupertinoPageRoute(
                    builder: (context) => ClinicTestTonguePage()))
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
