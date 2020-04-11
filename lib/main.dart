import 'package:flutter/material.dart';
import 'package:learning_platform_app/pages/course_page.dart';
import 'package:learning_platform_app/pages/duodenum_content/interior_of_duodenum.dart';
import 'package:learning_platform_app/pages/duodenum_content/introduction_etymology.dart';
import 'package:learning_platform_app/pages/esophagus_content/introduction.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/terminology.dart';
import 'package:learning_platform_app/pages/liver_content/etymology_location_size_movement.dart';
import 'package:learning_platform_app/pages/oralCavity_content/boundaries.dart';
import 'package:learning_platform_app/pages/palate_content/definition_parts.dart';
import 'package:learning_platform_app/size_config.dart';

import 'pages/welcome_screen.dart';
import 'styling.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Learning Platform Application',
              theme: AppTheme.lightTheme,
              home: DefPalatePage(),
            );
          },
        );
      },
    );
  }
}
