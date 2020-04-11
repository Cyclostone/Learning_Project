import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/oralcavity_proper.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class MucOCPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Oral Mucosa",
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
            "Lining of oral cavity",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Stratified squamous epithelium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mirror reflecting general health of individual",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lining epithelium is supported with underlying connective tissue and lamina propria",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Three subdivisions",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc4,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lining mucosa (oral mucosa)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Masticatory mucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Specialized mucosa",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Lining mucosa (oral mucosa)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc5,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Stratified squamous non-keratinized epithelium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lines lips, cheeks, floor of mouth, and covers the ventral surface of the tongue",
          ),
        ),
        ListTile(
          title: new Text(
            "Note - stratified squamous non-keratinized epithelium – a kind of compound epithelium with squamous cells in the top layer; found in places that are always kept wept and undergo considerable abrasion",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Masticatory mucosa",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc6,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Stratified squamous keratinized epithelium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Present on surfaces subject to the abrasion",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "roof of the oral cavity (palate), gums (gingiva)",
          ),
        ),
        ListTile(
          title: new Text(
            "Note (1) - stratified squamous keratinized epithelium – a kind of compound epithelium with dead cornified (with keratin filaments) squamous cells in the topmost layer; found in skin.",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc7,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Image of stratified squamous keratinized epithelium found in skin",
          ),
        ),
        ListTile(
          title: new Text(
            "Note (2) – gums – are the soft tissue covering the alveolar processes of the upper and lower jaws. It is surrounded by necks of the teeth.",
          ),
        ),
        ListTile(
          title: new Text(
            "Note (3) - palate- separation between nasal cavity above and oral cavity below; it has two parts – hard palate and soft palate.",
          ),
        ),
        ListTile(
          title: new Text(
            "Keratinization can be",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Parakeratinized - Superficial cells are dead, but retain nucleus",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Orthokeratinized - Superficial cells are dead and nuclei are lost from the cells",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Specialized mucosa",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc8,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Taste sensation through taste buds",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Present on the dorsal surface of tongue",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Four papillae present",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Mucosal differences",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Part", style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Feature",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Lining", style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            TableRow(children: [
              new Text("Skin"),
              new Text("Dry and exposed to abrasion"),
              new Text("Stratified squamous keratinized epithelium"),
            ]),
            TableRow(children: [
              new Text("Oral lining mucosaEsophagus Anal canal Cornea"),
              new Text("Wet and exposed to abrasion"),
              new Text("Stratified squamous non- keratinized epithelium"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Mucosal similarities",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Part", style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Feature",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Lining", style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            TableRow(children: [
              new Text("Oral lining mucosa"),
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.oc8,
                  fit: BoxFit.fitHeight,
                ),
              ),
              new Text("Stratified squamous non-keratinized epithelium"),
            ]),
            TableRow(children: [
              new Text("Esophagus"),
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.oc8,
                  fit: BoxFit.fitHeight,
                ),
              ),
              new Text("Stratified squamous non-keratinized epithelium"),
            ]),
            TableRow(children: [
              new Text("Anal canal"),
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.oc8,
                  fit: BoxFit.fitHeight,
                ),
              ),
              new Text("Stratified squamous non-keratinized epithelium"),
            ]),
            TableRow(children: [
              new Text("Cornea"),
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  Images.oc8,
                  fit: BoxFit.fitHeight,
                ),
              ),
              new Text("Stratified squamous non-keratinized epithelium"),
            ]),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Oral Vestibule",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc9,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "It is a cleft between",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "lips and cheeks externally",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "the gums and teeth internally",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Opening of parotid duct (Stensen’s duct)",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc10,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Parotid duct opens into the vestibule of the mouth opposite the crown of upper second molar tooth",
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
            "If the parotid gland is inflamed (sialadenitis), opening of the duct may be reddish",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Injection of dye through this duct – sialography (radiographic examination of salivary glands)",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Sialography procedure",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc11,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Koplik’s spots",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc12,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Tiny grains of sand paper like spots on the oral mucosa indicating early phase of measles",
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc13,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Note – Measles is an infectious disease caused by the rubeola virus",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Buccal smear / buccal swab",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.oc14,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Procedure to collect cells",
          ),
        ),
        ListTile(
          title: new Text(
            "Uses",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "For chromosomal and DNA analysis",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "for cytological analysis of buccal mucosa",
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
                CupertinoPageRoute(builder: (context) => ProperOCPage()))
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
