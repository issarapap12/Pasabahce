import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    "Apple",
    "Apricot",
    "Banana",
    "Blackberry",
    "Coconut",
    "Date",
    "Fig",
    "Gooseberry",
    "Grapes",
    "Lemon",
    "Litchi",
    "Mango",
    "Orange",
    "Papaya",
    "Peach",
    "Pineapple",
    "Pomegranate",
    "Starfruit"
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 80.0.w),
                    child: Text(
                      'SEARCH',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0.w,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                expandedHeight: mediaQuery.size.height / 10,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(9))),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () => {
                      Navigator.of(context).pop(),
                    },
                    color: Colors.black,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: <Widget>[
                        Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: mediaQuery.size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Find your watch',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0.w,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              "Search through more than 1000+ watches",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0.w,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.normal),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: TextField(
                                controller: _textController,
                                decoration: InputDecoration(
                                  hintText: 'Search Here...',
                                ),
                                onChanged: onItemChanged,
                              ),
                            ),
                            // Expanded(
                            //   child: ListView(
                            //     padding: EdgeInsets.all(12.0),
                            //     children: newDataList.map((data) {
                            //       return ListTile(
                            //         title: Text(data),
                            //         onTap: () => print(data),
                            //       );
                            //     }).toList(),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
