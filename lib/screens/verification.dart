import 'package:flutter/material.dart';
import 'package:newflutter/data/constants.dart';
import 'package:newflutter/screens/mainPage2.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  GlobalKey<ScaffoldState> _key;
  RangeValues values = RangeValues(1, 100);
  bool _isSelected;
  var selectedRange = RangeValues(0.2, 0.8);
  List<Company> _companies;
  List<String> _filters;
  List<String> _filters2;
  List<Company> _companies2;
  RangeLabels labels = RangeLabels('0', '100');
  // double count = 0.0;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    _isSelected = false;
    _filters = <String>[];
    _filters2 = <String>[];
    _companies = <Company>[
      const Company('All Watches'),
      const Company('Collections'),
      const Company('Boutique'),
      const Company('Limited'),
      const Company('Expensive'),
      const Company('Classical'),
    ];
    _companies2 = <Company>[
      const Company('Price'),
      const Company('Popularity'),
      const Company('Soteria'),
      const Company('Vase'),
      const Company('Top Seling'),
      const Company('Rating'),
      const Company('Archeological'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      key: _key,
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              title: Center(
                child: Text(
                  '          FILTER & SORT',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              expandedHeight: mediaQuery.size.height / 10,
              backgroundColor: Colors.black,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage2(),
                        ),
                      );
                    }),
              ],
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(9))),
            ),
            // SliverPadding(
            //   padding: EdgeInsets.only(top: 10.0),
            // sliver:
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 25.0,
                          width: 25.0,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              height: 50.0,
                              width: 25.0,
                            ),
                            Text(
                              'Select categories',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //   width: 40.0,
                            // ),
                            Wrap(
                              spacing: 0.0,
                              // runSpacing: 5.0,

                              children: companyWidgets.toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              height: 50.0,
                              width: 25.0,
                            ),
                            Text(
                              'Sort watches by',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //   width: 40.0,
                            // ),
                            Wrap(
                              spacing: 0.0,
                              // runSpacing: 5.0,

                              children: companyWidgets2.toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              height: 50.0,
                              width: 25.0,
                            ),
                            Text(
                              'Select a price range',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(

                              // thumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 15.0),
                              trackShape: RectangularSliderTrackShape(),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 9.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              trackHeight: 3.0,
                              activeTrackColor: pasa,
                              rangeThumbShape: RoundRangeSliderThumbShape(),
                              // rangeValueIndicatorShape:
                              //     PaddleRangeSliderValueIndicatorShape(),
                              rangeValueIndicatorShape:
                                  PaddleRangeSliderValueIndicatorShape(),
                              thumbColor: Colors.white,
                              minThumbSeparation: 50.0,
                              overlayColor: Colors.white,
                              valueIndicatorColor: Colors.white,
                              valueIndicatorShape: RoundSliderOverlayShape(),
                              valueIndicatorTextStyle: TextStyle(
                                  fontSize: 15.0, color: Colors.black)),
                          child: RangeSlider(
                            values: values,
                            // activeColor: pasa,

                            inactiveColor: Colors.grey[100],
                            divisions: 5,
                            labels: labels,
                            onChanged: (value) {
                              setState(() {
                                values = value;
                                labels = RangeLabels(
                                    '${value.start.toInt().toString()}\$',
                                    '${value.end.toInt().toString()}\$');
                              });
                            },
                            min: 1,
                            max: 100,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }

//not run
  Iterable<Widget> get companyWidgets sync* {
    for (Company company in _companies) {
      yield Padding(
        padding: const EdgeInsets.all(6.0),
        child: FilterChip(
          padding:
              EdgeInsets.only(left: 12.5, right: 12.5, top: 15.5, bottom: 15.5),
          showCheckmark: false,
          backgroundColor: Colors.grey[100],
          label: Text(
            company.name,
            style: TextStyle(
                color: _filters.contains(company.name)
                    ? Colors.white
                    : Colors.black),
          ),
          selected: _filters.contains(company.name),
          selectedColor: superPasa,

          // disabledColor: Colors.white,
          onSelected: (bool selected) {
            setState(() {
              // _isSelected = !_isSelected;
              if (selected) {
                // _isSelected = selected;
                _filters.add(company.name);
              } else {
                _filters.removeWhere((String name) {
                  // _isSelected = selected;
                  return name == company.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Iterable<Widget> get companyWidgets2 sync* {
    for (Company company in _companies2) {
      yield Padding(
        padding: const EdgeInsets.all(6.0),
        child: FilterChip(
          padding:
              EdgeInsets.only(left: 12.5, right: 12.5, top: 15.5, bottom: 15.5),
          showCheckmark: false,
          backgroundColor: Colors.grey[100],
          label: Text(
            company.name,
            style: TextStyle(
                color: _filters2.contains(company.name)
                    ? Colors.white
                    : Colors.black),
          ),
          selected: _filters2.contains(company.name),
          selectedColor: superPasa,

          // disabledColor: Colors.white,
          onSelected: (bool selected) {
            setState(() {
              // _isSelected = !_isSelected;
              if (selected) {
                // _isSelected = selected;
                _filters2.add(company.name);
              } else {
                _filters2.removeWhere((String name) {
                  // _isSelected = selected;
                  return name == company.name;
                });
              }
            });
          },
        ),
      );
    }
  }
}

class Company {
  const Company(this.name);
  final String name;
}
