import 'package:Tracer/colors.dart';
import 'package:flutter/material.dart';
import 'font_awesome_flutter.dart';
import 'dart:math' as math;

class ParticipantsList extends StatefulWidget {
  @override
  _ParticipantsListState createState() => _ParticipantsListState();
}

class _ParticipantsListState extends State<ParticipantsList> {
  final _summaryController = TextEditingController();

  String dropdownValue = 'MGH';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("visit.name - Participants"),
        backgroundColor: kTracersBlue500,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.chevron_left,
        //     semanticLabel: 'menu',
        //     color: kTracersWhite,
        //   ),
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search participants',
            ),
            onPressed: () {
              print('search button');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              SizedBox(height: 12.0),
              Row(),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: kTracersBlue500,
      ),
    );
  }
}
