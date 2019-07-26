import 'package:Tracer/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddVisit extends StatefulWidget {
  @override
  _AddVisitState createState() => _AddVisitState();
}

class _AddVisitState extends State<AddVisit> {
  final _summaryController = TextEditingController();

  String dropdownValue = 'MGH';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Visit"),
      ),
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 12.0),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: kTracersWhite,
                          labelText: 'Date',
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(
                              FontAwesomeIcons.calendar,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(width: 12.0),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: kTracersWhite,
                          labelText: 'Time',
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(
                              FontAwesomeIcons.clock,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              SizedBox(height: 12.0),
              DropdownButtonFormField<String>(
                //value: 'Select Site',
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['MGH', 'BWH', 'Spaulding']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: kTracersWhite,
                  labelText: 'Site',
                ),
              ),
              SizedBox(height: 12.0),
              DropdownButtonFormField<String>(
                //value: 'Select Site',
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['Ellison 5', 'Blake 4', 'IMA Pod 2']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: kTracersWhite,
                  labelText: 'Location',
                ),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                maxLines: 3,
                controller: _summaryController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: kTracersWhite,
                  labelText: 'Summary',
                ),
              ),
              SizedBox(height: 12.0),
              DropdownButtonFormField<String>(
                //value: 'Select Site',
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['Comprehensive', 'Followup']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: kTracersWhite,
                  labelText: 'Visit Type',
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                "Particpants",
                maxLines: 1,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Search",
                    //hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              
              CheckboxListTile(
                value: true,
                dense: true,
                title: Text('John'),
                subtitle: Text('Pharmacy'),
                secondary: Icon(FontAwesomeIcons.solidUserCircle), 
                onChanged: (bool value) {},
              ),
              Divider(height: 1,),
              CheckboxListTile(
                value: true,
                dense: true,
                title: Text('Jane'),
                subtitle: Text('Pharmacy'),
                secondary: Icon(FontAwesomeIcons.solidUserCircle),
                onChanged: (bool value) {},
              ),
              Divider(height: 1,),
              CheckboxListTile(
                value: true,
                dense: true,
                title: Text('Julie'),
                subtitle: Text('Pharmacy'),
                secondary: Icon(FontAwesomeIcons.solidUserCircle),
                onChanged: (bool value) {},
              ),
            ]),
      ),
    );
  }
}
