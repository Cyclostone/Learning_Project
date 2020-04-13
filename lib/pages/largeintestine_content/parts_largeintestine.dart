import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/innervation_clinical_relevation_relations.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/largeintestine_content/arterial_supply_colon.dart';
import 'package:learning_platform_app/pages/liver_content/microscopic_anatomy.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class Parts2LGPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Parts Of Large Intestine",
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
          height: MediaQuery.of(context).size.height * 0.24,
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
            "Ascending colon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg20,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Normally it is right side colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Retroperitoneal - covered with peritoneum anteriorly only",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "However, mobile ascending colon and cecum are also common. This may lead to right colon volvulus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg21,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Jackson’s membrane or veil",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "An abnormal connective tissue band that passes anterior to the ascending colon with mobile cecum is referred to as  Jackson's membrane or veil0",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Surgical Considerations",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "By incising the right lateral peritoneal reflection – ascending colon becomes mobile.",
          ),
        ),
        ListTile(
          title: new Text(
            "‘At risk’ posterior relations are",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gonadal vessels",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right ureter",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Duodenum",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Hepatic Flexure",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg22,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Located under the 9th and 10th costal cartilages \n\n‘At risk’ posterior relations are :",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right hepatic lobe",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right kidney (lower part)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gallbladder",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Duodenum",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Variations",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          title: new Text(
            "Cystocolic ligament - peritoneal fold between hepatic flexure and gallbladder",
          ),
        ),
        ListTile(
          title: new Text(
            "Hepatocolic ligament – peritoneal fold between hepatoduodenal ligament and hepatic flexure",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Transverse colon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg23,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "From hepatic flexure to splenic flexure \n\n‘At risk’ relations are :",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superiorly: Right hepatic lobe",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superolaterally: spleen",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Superior and Posteriorly: pancreas and kidney",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Transverse mesocolon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg24,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg25,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Double peritoneal fold that attaches to the anterior border of pancreas",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Fuses with posterior two layers of greater omentum.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Contains the middle colic artery and vein, and lymph nodes as well as nerves",
          ),
        ),
        ListTile(
          title: new Text(
            "Importance",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Gastric ulcers may get firmly fixed to mesocolon.",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "During separation of fixed stomach from the mesocolon, middle colic artery may be injured",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Division of abdominal cavity",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg26,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Transverse colon and transverse mesocolon divide the abdominal cavity into supra-colic and infra-colic compartment",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Splenic flexure",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg27,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located higher than the hepatic flexure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Acute than hepatic flexure",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located at 8th intercostal space in the midaxillary line",
          ),
        ),
        ListTile(
          title: new Text(
            "‘at risk’ relations are :",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Posterior: left kidney",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Anterior: left costal margin and stomach",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Descending colon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg28,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Covered anteriorly and on its medial and lateral sides by peritoneum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Retroperitoneal",
          ),
        ),
        ListTile(
          title: new Text(
            "‘at risk’ posterior relations :",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Quadratus lumborum muscle",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left adrenal gland",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left kidney and left ureter,",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left gonadal vessels",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Iliohypogastric",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Ilioinguinal nerves",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Sigmoid colon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg29,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "‘S’ shaped colon segment with the mesentery at the level of iliac crest  ",
          ),
        ),
        ListTile(
          title: new Text(
            "Two parts",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Iliac part – fixed; located within the left iliac fossa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Pelvic part – mobile; within the pelvis; extends upto S3 level",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Sigmoid mesocolon",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.lg30,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mesentery of sigmoid colon",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inverted V shaped attachment",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Has two limbs",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Left limb",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Attachment related to external iliac artery",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Right limb",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Attachment related to sacrum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "At the apex the attachment is related to left ureter",
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
                CupertinoPageRoute(builder: (context) => ArtSupLGPage()))
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
