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

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // TODO: Make a collection of cards (102)
  // TODO: Add a variable for Category (104)

  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
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
                    child: Text("Today")),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Upcoming")),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Past")),
                Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Admin"))
              ],
            ),
            title: Text('Tracer'),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add,
                  semanticLabel: 'add',
                ),
                onPressed: () {
                  print('Add button');
                },
              ),
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
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: (Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album),
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
              Text('All'),
              Text('Fav'),
              Text('Past')
            ],
          ),
        ),
      ),

      // TODO: Add a grid view (102)
    );
  }
}
