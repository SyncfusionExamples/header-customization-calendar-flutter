import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(CustomHeaders());

class CustomHeaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScheduleExample();
}

class ScheduleExample extends State<MyApp> {
  final CalendarController _controller=CalendarController();
  String? _headerText, _viewHeaderText, _viewHeaderText1, _viewHeaderText2, _viewHeaderText3, _viewHeaderText4, _viewHeaderText5,
      _viewHeaderText6, _dateText, _dateText1, _dateText2, _dateText3, _dateText4, _dateText5, _dateText6;
  String? date;
  double? width, cellWidth;
  Icon? icon1, icon2, icon3, icon4, icon5, icon6, icon7;

  @override
  void initState() {
    _headerText = 'header';
    _viewHeaderText = 'viewheader';
    _viewHeaderText1 = 'viewheader';
    _viewHeaderText2 = 'viewheader';
    _viewHeaderText3 = 'viewheader';
    _viewHeaderText4 = 'viewheader';
    _viewHeaderText5 = 'viewheader';
    _viewHeaderText6 = 'viewheader';
    _dateText = 'date';
    _dateText1 = 'date';
    _dateText2 = 'date';
    _dateText3 = 'date';
    _dateText4 = 'date';
    _dateText5 = 'date';
    _dateText6 = 'date';

    width = 0.0;
    cellWidth = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    cellWidth = width! / 8;
    return  Scaffold(
        body: Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0),child:
        Column(
          children: <Widget>[
            Container(
              color: Color(0xFF381460),
              width: width,
              height: 40,
              child: Text(_headerText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFa278b5),
                  width: cellWidth,
                  child: Text(''),
                ),
                Container(
                    color: Color(0xFFa278b5),
                    width: cellWidth,
                    child: Text(_viewHeaderText!, textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white))),
                Container(
                  color: Color(0xFFa278b5),
                  width: cellWidth,
                  child: Text(_viewHeaderText1!, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                ),
                Container(
                  color: Color(0xFFa278b5),
                  width: cellWidth,
                  child: Text(_viewHeaderText2!, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                ),
                Container(
                  color: Color(0xFFa278b5),
                  width: cellWidth,
                  child: Text(_viewHeaderText3!, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                ),
                Container(
                  color: Color(0xFFa278b5),
                  width: cellWidth,
                  child: Text(_viewHeaderText4!, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                ),
                Container(
                  color: Color(0xFFa278b5),
                  width: cellWidth,
                  child: Text(_viewHeaderText5!, textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
                ),
                Container(
                  color: Color(0xFFa278b5),
                  width: cellWidth,
                  child: Text(_viewHeaderText6!, textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(""),
                ),
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(
                    _dateText!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(
                    _dateText1!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(
                    _dateText2!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(
                    _dateText3!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(
                    _dateText4!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(_dateText5!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                ),
                Container(
                  color: Color(0xFFf6c3e5),
                  width: cellWidth,
                  height: 30,
                  child: Text(_dateText6!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(color: Color(0xFFffbdff0),width: cellWidth,height: 24, child: Text('')),
                Container(color: Color(0xFFffbdff0),width: cellWidth, child: icon1),
                Container(color: Color(0xFFffbdff0),width: cellWidth,  child: icon2),
                Container(color: Color(0xFFffbdff0),width: cellWidth, child: icon3),
                Container(color: Color(0xFFffbdff0),width: cellWidth,  child: icon4),
                Container(color: Color(0xFFffbdff0),width: cellWidth,  child: icon5),
                Container(color: Color(0xFFffbdff0),width: cellWidth,  child: icon6),
                Container(color: Color(0xFFffbdff0),width: cellWidth, child: icon7),
              ],
            ),
            Expanded(
                child: SfCalendar(
                  headerHeight: 0,
                  viewHeaderHeight: 0,
                  controller: _controller,
                  view: CalendarView.week,
                  onViewChanged: (ViewChangedDetails viewChangedDetails) {
                    if (_controller.view == CalendarView.week) {
                      _headerText = DateFormat('MMMM yyyy')
                          .format(viewChangedDetails
                          .visibleDates[viewChangedDetails.visibleDates.length ~/ 2])
                          .toString();
                      _viewHeaderText = DateFormat('EEE')
                          .format(viewChangedDetails.visibleDates[0])
                          .toString();
                      _viewHeaderText1 = DateFormat('EEE')
                          .format(viewChangedDetails.visibleDates[1])
                          .toString();
                      _viewHeaderText2 = DateFormat('EEE')
                          .format(viewChangedDetails.visibleDates[2])
                          .toString();
                      _viewHeaderText3 = DateFormat('EEE')
                          .format(viewChangedDetails.visibleDates[3])
                          .toString();
                      _viewHeaderText4 = DateFormat('EEE')
                          .format(viewChangedDetails.visibleDates[4])
                          .toString();
                      _viewHeaderText5 = DateFormat('EEE')
                          .format(viewChangedDetails.visibleDates[5])
                          .toString();
                      _viewHeaderText6 = DateFormat('EEE')
                          .format(viewChangedDetails.visibleDates[6])
                          .toString();
                      _dateText = DateFormat('dd')
                          .format(viewChangedDetails.visibleDates[0])
                          .toString();
                      _dateText1 = DateFormat('dd')
                          .format(viewChangedDetails.visibleDates[1])
                          .toString();
                      _dateText2 = DateFormat('dd')
                          .format(viewChangedDetails.visibleDates[2])
                          .toString();
                      _dateText3 = DateFormat('dd')
                          .format(viewChangedDetails.visibleDates[3])
                          .toString();
                      _dateText4 = DateFormat('dd')
                          .format(viewChangedDetails.visibleDates[4])
                          .toString();
                      _dateText5 = DateFormat('dd')
                          .format(viewChangedDetails.visibleDates[5])
                          .toString();
                      _dateText6 = DateFormat('dd')
                          .format(viewChangedDetails.visibleDates[6])
                          .toString();
                    }
                    if (viewChangedDetails.visibleDates[viewChangedDetails.visibleDates.length~/2].day % 2 == 0) {
                      icon1 = Icon(
                        Icons.wb_cloudy,
                        color: Colors.grey,
                      );
                      icon2 = Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      );
                      icon3 = Icon(
                        Icons.wb_incandescent,
                        color: Color(0xFF0ba0000),
                      );
                      icon4 = Icon(
                        Icons.wb_auto,
                        color: Colors.orange,
                      );
                      icon5 = Icon(Icons.wb_iridescent, color: Color(0xFF0253e35));
                      icon6 = Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      );
                      icon7 = Icon(
                        Icons.wb_incandescent,
                        color: Color(0xFF0ba0000),
                      );
                    } else if (viewChangedDetails.visibleDates[viewChangedDetails.visibleDates.length~/2].day % 5 == 0) {
                      icon1 = Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      );
                      icon2 = Icon(
                        Icons.wb_cloudy,
                        color: Colors.grey,
                      );
                      icon3 = Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      );
                      icon4 = Icon(Icons.wb_iridescent, color: Color(0xFF0253e35));
                      icon5 = Icon(
                        Icons.wb_incandescent,
                        color: Color(0xFF0ba0000),
                      );
                      icon6 = Icon(
                        Icons.wb_auto,
                        color: Colors.orange,
                      );
                      icon7 = Icon(
                        Icons.wb_cloudy,
                        color: Colors.grey,
                      );
                    } else if (viewChangedDetails.visibleDates[viewChangedDetails.visibleDates.length~/2].day % 4 == 0) {
                      icon1 = Icon(
                        Icons.wb_cloudy,
                        color: Colors.grey,
                      );
                      icon2 = Icon(Icons.wb_incandescent);
                      icon3 = Icon(
                        Icons.wb_auto,
                        color: Colors.orange,
                      );
                      icon4 = Icon(Icons.wb_iridescent, color: Color(0xFF0253e35));
                      icon5 = Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                      );
                      icon6 = Icon(
                        Icons.wb_cloudy,
                        color: Colors.grey,
                      );
                      icon7 = Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                      );
                    } else if (viewChangedDetails.visibleDates[viewChangedDetails.visibleDates.length~/2].day % 3 == 0) {
                      icon1 = Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                      );
                      icon2 = Icon(Icons.wb_iridescent, color: Color(0xFF0253e35));
                      icon3 = Icon(
                        Icons.wb_incandescent,
                        color: Color(0xFF0ba0000),
                      );
                      icon4 = Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      );
                      icon5 = Icon(
                        Icons.wb_auto,
                        color: Colors.orange,
                      );
                      icon6 = Icon(
                        Icons.wb_auto,
                        color: Colors.orange,
                      );
                      icon7 = Icon(
                        Icons.wb_cloudy,
                        color: Colors.grey,
                      );
                    } else {
                      icon1 = Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      );
                      icon2 = Icon(
                        Icons.wb_iridescent,
                        color: Color(0xFF0253e35),
                      );
                      icon3 = Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      );
                      icon4 = Icon(
                        Icons.wb_cloudy,
                        color: Colors.grey,
                      );
                      icon5 = Icon(Icons.wb_iridescent, color: Color(0xFF0253e35));
                      icon6 = Icon(
                        Icons.wb_incandescent,
                        color: Color(0xFF0ba0000),
                      );
                      icon7 = Icon(
                        Icons.wb_auto,
                        color: Colors.orange,
                      );
                    }
                    SchedulerBinding.instance!.addPostFrameCallback((duration) {
                      setState(() {});
                    });
                  },
                )
            ),
          ],
        ),
        ));
  }
}
