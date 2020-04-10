import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/lesson.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/esophagus_content/tissue_composition_esophagus.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/blood_supply.dart';
import 'package:learning_platform_app/pages/stomach_content/applied_aspects.dart';
import 'package:learning_platform_app/pages/stomach_content/relations_peritoneal_attachments2.dart';

class StructJIPage extends StatelessWidget {
  // final Lesson lesson;
  // IntroPage({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Text(
          "Structure and differences between jejunum and ileum",
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
            "Structure",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji5,
            fit: BoxFit.fitHeight,
          ),
        ),
        ListTile(
          title: new Text(
            "Four layers – similar to other parts of gastrointestinal tract",
          ),
        ),
        ListTile(
          title: new Text(
            "1.Mucosa",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Has permanent mucosal infoldings called plicae circulares or valves of Kerckring",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Villi – finger like circular projections (0.5 mm in length)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Mucosa is lined by simple columnar epithelium",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Apical aspects of these cells show microscopic cellular wall projections called microvilli",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Microvilli increase the surface area of diffusion",
          ),
        ),
        ListTile(
          title: new Text(
            "Intestinal glands (crypts of Lieberkuhn)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Secretion of mucus and enzymes",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Simple tubular glands",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Extend into the lamina propria",
          ),
        ),
        ListTile(
          title: new Text(
            "2.Submucosa",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Meissner’s plexus",
          ),
        ),
        ListTile(
          title: new Text(
            "Peyer’s patch",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Isolated and confluent masses of lymphatic nodules",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Located in mucosa and submucosa",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Present in the antimesenteric border of intestine",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "More frequently found in ileum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Microfold cells (or M cells) are found in the gut-associated lymphoid tissue (GALT) of Peyer’s patches",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "These cells initiate mucosal immune response by transporting microbes and particles across the epithelial cell layer from the gut lumen to the lamina propria",
          ),
        ),
        ListTile(
          title: new Text(
            "3.Muscular layer",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Outer longitudinal layer",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Inner circular layer",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Auerback’s plexus between two layers",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Responsible for intestinal motility",
          ),
        ),
        ListTile(
          title: new Text(
            "4. Serosa",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "By visceral peritoneum",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Surrounds the bowel completely except the mesenteric border",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Lined by simple squamous epithelium",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "Differential Characteristics of the Jejunum and Ileum",
            style: TextStyle(fontSize: 30.0, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            Images.ji6,
            fit: BoxFit.fitHeight,
          ),
        ),
        Table(
          border: TableBorder.all(width: 0.5, color: Colors.black),
          children: [
            TableRow(children: [
              new Text("Jejunum",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              new Text("Ileum", style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            TableRow(children: [
              new Text("Wall is thicker"),
              new Text("Wall is thinner")
            ]),
            TableRow(children: [
              new Text("Lumen is larger"),
              new Text("Lumen is smaller")
            ]),
            TableRow(children: [
              new Text("Fat present on mesentery"),
              new Text("Fat present on ileum and mesentery")
            ]),
            TableRow(children: [
              new Text("Prominent plicae circulares"),
              new Text("Less prominent plicae")
            ]),
            TableRow(children: [
              new Text("Single line of arterial arcade"),
              new Text("Several lines of arterial arcades")
            ]),
            TableRow(children: [
              new Text("Aggregate lymph nodules (Peyer’s patches) sparse"),
              new Text("Aggregate lymph nodules are frequent")
            ]),
          ],
        ),
        ListTile(
          title: new Text(
            "Surgically important methods to differentiate between jejunum and ileum",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Jejunum has one or two arterial arcades",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vasa recta in jejunum are long (~4 cm)",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "A typical ileum has three or more arterial arcades",
          ),
        ),
        ListTile(
          leading: new MyBullet(),
          title: new Text(
            "Vasa recta in ileum are short (~1.5 cm)",
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
                CupertinoPageRoute(builder: (context) => BloodJIPage()))
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
