// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:Tracer/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'font_awesome_flutter.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    //OBSERVATION CATEGORY LIST TILE
    final obsCatListTile = new ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: SizedBox(
        width: 50,
        height: 42,
        child: Stack(
          children: <Widget>[
            CircleAvatar(
              // IF ASSIGNED IT WILL HAVE A PHOTO OR INITIALS
              //backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0),
              //child: Text('BH'),
              //END IF ASSIGNED

              //IF NOT ASSIGNED IT WILL BE JUST A ICON WITH A WHITE BACKGROUND
              child: Icon(
                FontAwesomeIcons.solidUserCircle,
                size: 40,
                color: kTracersGray300,
              ),
              backgroundColor: kTracersWhite,
              //END IF NOT ASSIGNED
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              alignment: Alignment.bottomCenter,
              child: CircleAvatar(
                maxRadius: 8,

                //IF NOT YEY ASSESED FLAG ICON IS GRAY
                backgroundColor: kTracersGray300,

                //IF NO EXCEOPTIONS FOUND ICON IS BLUE
                //backgroundColor: kTracersBlue500,

                //IF EXCEPTIONS FOUND FLAG ICON IS RED
                //backgroundColor: kTracersRed500,

                child: Icon(
                  Icons.flag,
                  size: 12,
                  color: kTracersWhite,
                ),
              ),
            ),
          ],
        ),
      ),
      title: Text(
        'Meds, Specimens Treatment ',
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      trailing: Icon(
        //ICON IS GREEN CHECK IF COMPLIANT
        FontAwesomeIcons.solidCheckCircle,
        color: kTracersGreen500,

        //ICON IS YELLOW ! IF ADVISORY
        //FontAwesomeIcons.exclamationCircle,
        //color: kTracersYellow500,

        //ICON IS RED X IF NON COMPLIANT
        //FontAwesomeIcons.solidTimesCircle,
        //color: kTracersRed500,
        size: 16.0,
      ),
    );

    final obsCatContainer = new Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                semanticLabel: 'menu',
              ),
              onPressed: () {
                print('Menu button');
              },
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("ASSIGNED")),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("ALL")),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("FAVORITES")),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("EXCEPTIONS"))
              ],
            ),
            title: Text('Visit Name - Today'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  semanticLabel: 'search',
                ),
                onPressed: () {
                  print('Search button');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  semanticLabel: 'more',
                ),
                onPressed: () {
                  print('More button');
                },
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              //ASSIGNED OBSERVATION CATEGORIES TAB PANE CONTENT
              ListView(
                padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                children: <Widget>[
                  Text(
                    "NSPG 1 Patient Identification",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.subhead,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.0),
                  obsCatListTile,
                  obsCatListTile,
                  obsCatListTile,
                ],
              ),

              //ALL TAB PANE CONTENT
              ListView(
                padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                children: <Widget>[
                  Text(
                    "//ALL LIST GOES HERE",
                  ),
                ],
              ),

              //FAV TAB PANE CONTENT
              ListView(
                padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                children: <Widget>[
                  Text(
                    "//FAVORITES LIST GOES HERE",
                  ),
                ],
              ),

              //EXCEPTIONS ONLY PANE CONTENT
              ListView(
                padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                children: <Widget>[
                  Text(
                    "//EXCEPTIONS ONLY",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
