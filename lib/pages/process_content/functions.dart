import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/histology_functions.dart';
import 'package:learning_platform_app/pages/liver_content/blood_supply.dart';
import 'package:learning_platform_app/pages/oralCavity_content/teeth-2sets.dart';
import 'package:learning_platform_app/pages/process_content/components.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class FunctionProcessPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "The steps of processing of food",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Functions",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
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
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Part",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
              new Text("Digestive function",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
              new Text("Non-digestive function",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Mouth",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro6,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    title: new Text(
                      "Mastication",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Salivation",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "First phase of deglutition",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    title: new Text(
                      "Speech",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Immunity – saliva has IgA",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Tongue",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro7,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    title: new Text(
                      "Taste sensation",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Aids chewing",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Speech",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Immunity – lingual tonsil",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Pharynx",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro8,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Passage of food",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Gag reflex",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Second phase of deglutition",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Control mechanism for passage of food and air",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Speech",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Immunity – Waldeyer’s ring",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Auditory tube communicates with middle ear – maintain equal pressure on both sides of tympanic membrane",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Esophagus",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro9,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Passage of food from pharynx to stomach",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Third phase of deglutition",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "~",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Stomach",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro10,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Reservoir of food",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Churning of food",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Secretion of",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "hydrochloric acid (Kill microbes)",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Gastric enzymes",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Secretion of gastrin, and motilin",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Digestion of",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Initiation of digestion of proteins",
                    ),
                  ),
                  ListTile(
                    title: new Text(
                      "Absorption of",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Glucose and some drugs",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Secretion of intrinsic factor (necessary for vitamin B12 absorption in ileum)",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Secretion of ghrelin, leptin, trefoil peptides, somatostatin, enkephalins and bombesin",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Duodenum",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro11,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Absorption of carbohydrates, lipids, amino acids, Ca2+, iron",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Secretion of gastrin, secretin, cholecystokinin",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Secretion of ghrelin, leptin, trefoil peptides, enkephalins, bombesin and Enteroglucagon",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Jejunum",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro12,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Absorption of carbohydrates, lipids, amino acids, Ca2+, iron",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Secretion of secretin",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Secretion of Cholecystokinin, glucose-dependent insulinotropic peptide, enteroglucagon, leptin, trefoil peptides, enkephalins, bombesin and Enteroglucagon",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Ileum",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro13,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Absorption of bile salts, vitamin B12, water electrolytes",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Secretion of Bombesin, enteroglucagon, Glucagon like peptide – 1 and 2, Growth hormone releasing factor, motilin, neurotensin and trefoil peptides",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Vermiform appendix",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro14,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "~",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "component of mucosal immune function",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Large intestine",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro15,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Absorption of water, electrolytes (sodium and chloride), vitamins",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Colonic bacteria – fermentation of indigestible materials",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Reservoir to receive, store and periodically discharge the accumulation of waste",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Gut flora – directly inhibits growth of pathogens",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Metabolize xenobiotics such as drugs, phytochemicals, and food toxicants",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Role in microbiome-gut-brain axis",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Liver",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro16,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Process the nutrients absorbed from the small intestine.",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Bile - role in digesting fat",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro17,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Gallbladder",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro18,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "store and concentrate bile",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "~",
                    ),
                  ),
                ],
              )
            ]),
            TableRow(children: [
              Column(
                children: [
                  new Text("Pancreas",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      Images.pro19,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Pancreatic digestive enzymes digests – starch, proteins, fatty acids",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                     
                    title: new Text(
                      "Endocrine pancreas secrete",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Glucagon - increase blood glucose levels",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Insulin – decrease blood glucose levels",
                    ),
                  ),
                  ListTile(
                     
                    title: new Text(
                      "Somatostatin – decreases the release of insulin and glucose",
                    ),
                  ),
                ],
              )
            ]),
          ],
        ),
      ],
    );
    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => CompProcessPage()))
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
