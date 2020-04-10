import 'package:flutter/material.dart';
import 'package:learning_platform_app/model/user.dart';

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
      appBar: AppBar(
        title: Text('Feedback Form'),
      ),
      body: Container(
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your first name';
                      }
                    },
                    onSaved: (val) => setState(() => _user.firstname = val),
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
                    onSaved: (val) => setState(() => _user.lastname = val),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: Text('Subscribe'),
                  ),
                  SwitchListTile(
                    title: const Text('Monthly Newsletter'),
                    value: _user.newsletter,
                    onChanged: (bool val) =>
                        setState(() => _user.newsletter = val),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: Text('Interests'),
                  ),
                  CheckboxListTile(
                    title: const Text('Hiking'),
                    value: _user.passions[User.PassionHiking],
                    onChanged: (val) {
                      setState(() => _user.passions[User.PassionHiking] = val);
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        //final form = _formkey.currentState;
                        _user.save();
                        _showDialog(context);
                      },
                      child: Text('Save'),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting Form')));
  }
}
