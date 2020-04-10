import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class EvalEsoPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Evaluation of esophagus and applied aspects",
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
        // Positioned(
        //   right: 8.0,
        //   top: 60.0,
        //   child: InkWell(
        //     onTap: () {
        //       Navigator.push(
        //           context,
        //           CupertinoPageRoute(
        //               builder: (context) => ListPage(
        //                     title: 'ANATOMY OF ABDOMEN',
        //                   )));
        //     },
        //     child: Icon(Icons.home, color: Colors.white),
        //   ),
        // )
      ],
    );

    final bottomContentText = Column(
      children: <Widget>[
        ListTile(
          leading: new MyBulletRed(),
          title: new Text(
            "Upper GI endoscopy",
            style: TextStyle(color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBulletRed(),
          title: new Text(
            "CT and MRI",
            style: TextStyle(color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus18,
            fit: BoxFit.fitHeight,
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Cervical part",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Sectional images both horizontal and longitudinal – can be obtained with CT and MRI ",
          ),
        ),
        // ListTile(
        //   title: new Text(
        //     "Thoracic part",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Using these images 3D image reconstruction can be done",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Barium swallow",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus19,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Test used to determine the cause of painful swallowing (dysphagia)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "X-ray is taken while patient swallows barium preparation",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Manometry",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus20,
            fit: BoxFit.fitHeight,
          ),
        ),

        ListTile(
          title: new Text(
            "Measures the timing and strength of esophageal contractions and muscular valve relaxation",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Applied Aspects",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Dysphagia",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus21,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Difficulty in swallowing can be secondary to esophageal problems like",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "failure of opening of sphincter (achalasia)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Esophageal narrowing secondary to ulcers, acid reflux",
          ),
        ),
        ListTile(
          title: new Text(
            "Gastro-Esophageal Reflux Disease (GERD)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Irritation in the lower esophagus due to reflux of acidic stomach contents",
          ),
        ),
        ListTile(
          title: new Text(
            "Factors influencing the tone of lower esophageal sphincter affects GERD",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Stress and anxiety",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Smoking",
          ),
        ),
        ListTile(
          title: new Text(
            "Barrett's esophagus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "As a complication of gastro-esophageal reflux, the mucosa of lower esophagus changes from \nstratified squamous into columnar epithelium",
          ),
        ),
        ListTile(
          title: new Text(
            "Sliding hiatus hernia",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus24,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Stomach bulges up into the thorax through the esophageal hiatus",
          ),
        ),
        ListTile(
          title: new Text(
            "Paraesophageal hiatal hernia",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: new Text(
            "A part of the stomach squeezes through the hiatus, with normal position of esophagogastric junction",
          ),
        ),
        ListTile(
          title: new Text(
            "Transesophageal echocardiography (TEE)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Ultrasonography through the esophagus can more specifically delineate the left atrium and mitral \nvalve",
          ),
        ),
        ListTile(
          title: new Text(
            "Tracheoesophageal fistula",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus26,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Developmental abnormality with an abnormal connection between the esophagus and the \ntrachea",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "In the most common variety –esophagus abruptly ends and distal part is attached to the \ntrachea",
          ),
        ),
        ListTile(
          title: new Text(
            "Esophageal varices",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus27,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus28,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Secondary to portal hypertension the potential anastomoses in the lower esophagus open \nup.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Veins contributing",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Portal system – left gastric veins",
          ),
        ),
        ListTile(
          leading: new MyBulletRect(),
          title: new Text(
            "Caval system – lower esophageal veins draining into azygos vein",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Complication – bleeding",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "If the esophageal varices bleed, it leads to accumulation of blood in the stomach",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Irritates stomach mucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vomiting of blood – hematemesis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Temporary treatment with balloon tamponade",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "(Sengstaken Blakemore tube)",
          ),
        ),
        ListTile(
          title: new Text(
            "Devdas – Novel and Movie (the most filmed non-epic story in India)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.esophagus29,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "The lead role of Devdas – becomes alcoholic after a failed marriage alliance with Parvathi. He dies in the end by vomiting blood (hematemesis, probably due to portal hypertension secondary to alcoholic cirrhosis)",
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
                    builder: (context) => ListPage(
                          title: 'ANATOMY OF ABDOMEN',
                        )))
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

class MyBulletRed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 20.0,
      decoration: new BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
