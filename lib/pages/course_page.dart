import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_platform_app/images.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/pages/sub-course_page.dart';
import 'package:learning_platform_app/responsive_widget.dart';
import 'package:learning_platform_app/size_config.dart';
import 'package:learning_platform_app/strings.dart';

import '../styling.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _isFirstCrossFadeEnabled = true;

  animateCrossFade() {
    setState(() {
      _isFirstCrossFadeEnabled = !_isFirstCrossFadeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: true,
        right: true,
        top: false,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(3.0 * SizeConfig.heightMultiplier),
                ),
              ),
              constraints: BoxConstraints(
                  maxHeight: 40 *
                      (SizeConfig.isMobilePortrait
                          ? SizeConfig.heightMultiplier
                          : SizeConfig.widthMultiplier)),
              child: Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  ResponsiveWidget(
                    portraitLayout: TopContainerPortrait(),
                    landscapeLayout: TopContainerLandscape(),
                  ),
                ],
              ),
            ),
            Container(
              constraints:
                  BoxConstraints(maxHeight: 250 * SizeConfig.heightMultiplier),
              decoration: BoxDecoration(
                color: AppTheme.appBackgroundColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    // child: SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        PortraitCard(
                          imagePath: Images.anatomy,
                          lessonName: Strings.anatomy,
                          numberOfCourses: "10",
                          isLocked: false,
                        ),
                        PortraitCard(
                          imagePath: Images.locked,
                          lessonName: Strings.physiology,
                          numberOfCourses: "34",
                          isLocked: true,
                        ),
                      ],
                    ),
                    //),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    // child: SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        PortraitCard(
                          imagePath: Images.locked,
                          lessonName: Strings.biochemistry,
                          numberOfCourses: "34",
                          isLocked: true,
                        ),
                        PortraitCard(
                          imagePath: Images.locked,
                          lessonName: Strings.pathology,
                          numberOfCourses: "34",
                          isLocked: true,
                        ),
                      ],
                    ),
                    //),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.pharmacology,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.microbiology,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.forensicmedicine,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.communitymedicine,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.ophthalmology,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.ent,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.paediatrics,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.obstetrics_gynecology,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.generalsurgery,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.generalmedicine,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.anesthesia,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.radiology,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.dermatology,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.psychiatry,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0 * SizeConfig.widthMultiplier,
                      vertical: 1 * SizeConfig.heightMultiplier,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          PortraitCard(
                            imagePath: Images.locked,
                            lessonName: Strings.orthopedics,
                            numberOfCourses: "34",
                            isLocked: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class PortraitCard extends StatelessWidget {
  final String imagePath, lessonName, numberOfCourses;
  final bool isLocked;

  const PortraitCard(
      {Key key,
      this.imagePath,
      this.lessonName,
      this.numberOfCourses,
      this.isLocked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {
          !isLocked
              ? Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => SubHomeScreen()))
              : null;
        },
        child: Material(
          child: Container(
            width: MediaQuery.of(context).size.width / 2.3,
            margin: EdgeInsets.symmetric(
                horizontal: 3 * SizeConfig.widthMultiplier),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(3 * SizeConfig.heightMultiplier),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3 * SizeConfig.heightMultiplier),
                    ),
                    child: AspectRatio(
                      aspectRatio: 0.8,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0 * SizeConfig.widthMultiplier),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        lessonName,
                        style: Theme.of(context)
                            .textTheme
                            .display1
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$numberOfCourses Courses",
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imagePath, lessonName, numberOfCourses;

  const CustomCard(
      {Key key, this.imagePath, this.lessonName, this.numberOfCourses})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListPage(title: "Lessons")));
          },
          child: Material(
              color: Colors.indigo,
              elevation: 10.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: MediaQuery.of(context).size.width / 2.7,
                width: MediaQuery.of(context).size.width / 2.7,
                margin: EdgeInsets.symmetric(
                    horizontal: 3 * SizeConfig.widthMultiplier),
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                          // height: 200.0,
                          width: MediaQuery.of(context).size.width / 1.3,
                          margin: EdgeInsets.symmetric(
                              horizontal: 3 * SizeConfig.widthMultiplier),
                          child: ClipOval(
                              child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    imagePath,
                                  )))),
                    ),
                  ),
                  Center(
                    child: Text(lessonName,
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontFamily: "Alike",
                            fontWeight: FontWeight.w200)),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "$numberOfCourses Courses",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: "Alike"),
                      maxLines: 5,
                      textAlign: TextAlign.left,
                    ),
                  )
                ]),
              ))),
    );
  }
}

Widget customCard(String langname, String image, String caption) {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: InkWell(
        onTap: () {},
        child: Material(
            color: Colors.indigo,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                        height: 200.0,
                        width: 200.0,
                        child: ClipOval(
                            child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  image,
                                )))),
                  ),
                ),
                Center(
                  child: Text(langname,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontFamily: "Alike",
                          fontWeight: FontWeight.w200)),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    caption,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.left,
                  ),
                )
              ]),
            ))),
  );
}

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: AppTheme.selectedTabBackgroundColor,
                borderRadius: BorderRadius.vertical(
                    bottom:
                        Radius.circular(3.0 * SizeConfig.heightMultiplier))),
            child: Align(
              alignment: Alignment(0, SizeConfig.isMobilePortrait ? 0.3 : 0.35),
              child: Text(
                Strings.lessons,
                style: Theme.of(context).textTheme.body1,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: AppTheme.unSelectedTabBackgroundColor,
                borderRadius: BorderRadius.vertical(
                    bottom:
                        Radius.circular(3.0 * SizeConfig.heightMultiplier))),
            child: Align(
              alignment: Alignment(0, SizeConfig.isMobilePortrait ? 0.3 : 0.35),
              child: Text(
                Strings.myClasses,
                style: Theme.of(context).textTheme.body2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TopContainerPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.only(top: 2.0 * SizeConfig.heightMultiplier),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(24.0),
          ),
          color: AppTheme.topBarBackgroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(2 * SizeConfig.heightMultiplier),
                width: double.maxFinite,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          ProfileImage(),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 1 * SizeConfig.heightMultiplier,
                              ),
                              child: Text(
                                Strings.greetingMessage,
                                style: Theme.of(context).textTheme.display1,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.blur_on,
                            size: 8 * SizeConfig.imageSizeMultiplier,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          Strings.whatLearnToday,
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 2 * SizeConfig.heightMultiplier,
                bottom: 2.5 * SizeConfig.heightMultiplier,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            size: 3 * SizeConfig.heightMultiplier,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 1 * SizeConfig.heightMultiplier,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: Strings.searchHere,
                                ),
                                style: Theme.of(context).textTheme.display2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              3.0 * SizeConfig.heightMultiplier),
                          bottomLeft: Radius.circular(
                              3.0 * SizeConfig.heightMultiplier),
                        ),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 6 * SizeConfig.imageSizeMultiplier,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopContainerLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.75,
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(24.0),
          ),
          color: AppTheme.topBarBackgroundColor,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 2.0 * SizeConfig.heightMultiplier,
                  right: 2.0 * SizeConfig.heightMultiplier,
                  top: 1.0 * SizeConfig.heightMultiplier,
                ),
                child: Row(
                  children: <Widget>[
                    ProfileImage(),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 1 * SizeConfig.heightMultiplier,
                        ),
                        child: Text(
                          Strings.greetingMessage,
                          style: Theme.of(context).textTheme.display1,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2 * SizeConfig.heightMultiplier),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.search,
                              size: 3 * SizeConfig.heightMultiplier,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 1 * SizeConfig.heightMultiplier,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: Strings.searchHere,
                                  ),
                                  style: Theme.of(context).textTheme.display2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.blur_on,
                      size: 8 * SizeConfig.imageSizeMultiplier,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 2.0 * SizeConfig.heightMultiplier,
                    bottom: 1.5 * SizeConfig.heightMultiplier),
                child: Row(
                  children: <Widget>[
                    Text(
                      Strings.whatLearnToday,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Spacer(),
                    Container(
                      width: 10 * SizeConfig.heightMultiplier,
                      padding: EdgeInsets.symmetric(
                          vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              3.0 * SizeConfig.heightMultiplier),
                          bottomLeft: Radius.circular(
                              3.0 * SizeConfig.heightMultiplier),
                        ),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 6 * SizeConfig.imageSizeMultiplier,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
        color: Colors.pinkAccent.withOpacity(0.4),
      ),
      child: Image.asset(
        Images.profileImage,
        width: 10 * SizeConfig.imageSizeMultiplier,
        height: 10 * SizeConfig.imageSizeMultiplier,
      ),
    );
  }
}
