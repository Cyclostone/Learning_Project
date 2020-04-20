import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:learning_platform_app/model/user.dart';
import 'package:intl/intl.dart';
import 'package:learning_platform_app/pages/anatomy_listpage.dart';

class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  final _formkey = GlobalKey();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        title: Text('Feedback Form'),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 16.0,
          ),
          child: Builder(
            builder: (context) => Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FormBuilder(
                      initialValue: {
                        'date': DateTime.now(),
                        'accept_terms': false,
                      },
                      autovalidate: true,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'First Name',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your first name';
                              }
                            },
                            onSaved: (val) =>
                                setState(() => _user.firstname = val),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your last name';
                              }
                            },
                            onSaved: (val) =>
                                setState(() => _user.lastname = val),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                            child: Text(
                                'How do you rate images for its content and simplicity ?'),
                          ),
                          FormBuilderSlider(
                            attribute: "Slider_switch1",
                            min: 1.0,
                            max: 5.0,
                            initialValue: 1.0,
                            divisions: 100,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                            child: Text(
                                'How do you rate videos in the given chapter ? Were they short and informative.'),
                          ),
                          FormBuilderSlider(
                            attribute: "Slider_switch2",
                            min: 1.0,
                            max: 5.0,
                            initialValue: 1.0,
                            divisions: 100,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                            child: Text(
                                'Is the content useful for exam preparation?'),
                          ),
                          FormBuilderChoiceChip(
                              attribute: "liked_or_not",
                              options: [
                                FormBuilderFieldOption(
                                    value: "Yes", child: Text("Yes")),
                                FormBuilderFieldOption(
                                    value: "No", child: Text("No")),
                              ]),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                            child:
                                Text('How do you rate quick revision module?'),
                          ),
                          FormBuilderSlider(
                            attribute: "Slider_switch4",
                            min: 1.0,
                            max: 5.0,
                            initialValue: 1.0,
                            divisions: 100,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                            child: Text(
                                'How do you rate concept of microeducation in medicine?'),
                          ),
                          FormBuilderSlider(
                            attribute: "Slider_switch4",
                            min: 1.0,
                            max: 5.0,
                            initialValue: 1.0,
                            divisions: 100,
                          ),
                          SwitchListTile(
                            title: const Text('Monthly Newsletter'),
                            value: _user.newsletter,
                            onChanged: (bool val) =>
                                setState(() => _user.newsletter = val),
                          ),
                          // Container(
                          //   padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                          //   child: Text('Interests'),
                          // ),
                          // CheckboxListTile(
                          //   title: const Text('Hiking'),
                          //   value: _user.passions[User.PassionHiking],
                          //   onChanged: (val) {
                          //     setState(() =>
                          //         _user.passions[User.PassionHiking] = val);
                          //   },
                          // ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 16.0),
                            child: RaisedButton(
                              color: Color.fromRGBO(58, 66, 86, 1.0),
                              hoverColor: Colors.redAccent,
                              onPressed: () {
                                //final form = _formkey.currentState;
                                _user.save();
                                _showDialog(context);
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => ListPage(
                                            title: 'ANATOMY OF ABDOMEN')));
                              },
                              child: Text("Finish", style: TextStyle(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting Form')));
  }
}
