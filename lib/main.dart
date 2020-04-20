import 'package:flutter/material.dart';
import 'package:learning_platform_app/form_page.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';
import 'package:learning_platform_app/pages/anatomy_listpage_mk2.dart';
import 'package:learning_platform_app/pages/anorectum_content/definition.dart';
import 'package:learning_platform_app/pages/course_page.dart';
import 'package:learning_platform_app/pages/duodenum_content/introduction_etymology.dart';
import 'package:learning_platform_app/pages/esophagus_content/introduction.dart';
import 'package:learning_platform_app/pages/jejunum_ileum_content/terminology.dart';
import 'package:learning_platform_app/pages/largeintestine_content/parts.dart';
import 'package:learning_platform_app/pages/liver_content/etymology_location_size_movement.dart';
import 'package:learning_platform_app/pages/oralCavity_content/boundaries.dart';
import 'package:learning_platform_app/pages/palate_content/definition_parts.dart';
import 'package:learning_platform_app/pages/peritoneum_content/definition.dart';
import 'package:learning_platform_app/pages/pharynx_content/terminology.dart';
import 'package:learning_platform_app/pages/process_content/steps.dart';
import 'package:learning_platform_app/pages/stomach_content/introduction.dart';
import 'package:learning_platform_app/pages/tongue_content/parts.dart';
import 'package:learning_platform_app/pages/vermiformappendix_content/intro.dart';
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
                home: HomeScreen());
          },
        );
      },
    );
  }
}
