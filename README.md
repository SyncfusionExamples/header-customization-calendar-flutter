# Header and ViewHeader customization in flutter calendar. 
In flutter event calendar, you can customize the header and view header of the calendar and in this article, customization can be achieved by Container and Row, Column Widgets of the flutter.

## Step 1
Set HeaderHeight and ViewHeaderHeight property as `0` to hide default headers. Please find the following image for calendar without headers.

```xml
@override
Widget build(BuildContext context) {
  Expanded(
    child: SfCalendar(
      view: CalendarView.week,
      headerHeight: 0,
      viewHeaderHeight: 0,
    ),
  );
}
```
<img alt="without headers"  src="https://github.com/SyncfusionExamples/header-customization-calendar-flutter/blob/master/Screenshots/without%20headers.jpg" width="350" height="500" />|

## Step 2
Add Row Widget as children for header customization.
```xml
Row(
  children: <Widget>[
    Container(
      color: Color(0xFF381460),
      width: width,
      height: 40,
      child: Text(_text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.white)),
    )
  ],
),
```

## Step 3
Add another Row Widget as children for `view header` customization of day.
```xml
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
      child: Text(_viewHeaderText, textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white))),
    Container(
      color: Color(0xFFa278b5),
      width: cellWidth,
      child: Text(_viewHeaderText1, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
    ),
    Container(
      color: Color(0xFFa278b5),
      width: cellWidth,
      child: Text(_viewHeaderText2, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
    ),
    Container(
      color: Color(0xFFa278b5),
      width: cellWidth,
      child: Text(_viewHeaderText3, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
    ),
    Container(
      color: Color(0xFFa278b5),
      width: cellWidth,
      child: Text(_viewHeaderText4, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
    ),
    Container(
      color: Color(0xFFa278b5),
      width: cellWidth,
      child: Text(_viewHeaderText5, textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
    ),
    Container(
      color: Color(0xFFa278b5),
      width: cellWidth,
      child: Text(_viewHeaderText6, textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
    ),
  ],
),
```

## Step 4
Add Row Widget as children for view header customization of date.
```xml
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
        _dateText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    ),
    Container(
      color: Color(0xFFf6c3e5),
      width: cellWidth,
      height: 30,
      child: Text(
        _dateText1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    ),
    Container(
      color: Color(0xFFf6c3e5),
      width: cellWidth,
      height: 30,
      child: Text(
        _dateText2,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    ),
    Container(
      color: Color(0xFFf6c3e5),
      width: cellWidth,
      height: 30,
      child: Text(
        _dateText3,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    ),
    Container(
      color: Color(0xFFf6c3e5),
      width: cellWidth,
      height: 30,
      child: Text(
        _dateText4,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    ),
    Container(
      color: Color(0xFFf6c3e5),
      width: cellWidth,
      height: 30,
      child: Text(_dateText5,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25)),
    ),
    Container(
      color: Color(0xFFf6c3e5),
      width: cellWidth,
      height: 30,
      child: Text(_dateText6,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25)),
    ),
  ],
),
```

## Step 5
Then, add Expanded Widget as children and place the calendar inside the Widget. Using OnViewChanged event get the visible dates and using this, assign the date values to the headers and view headers.  
```xml
Expanded(
  child: SfCalendar(
    headerHeight: 0,
    viewHeaderHeight: 0,
    view: _calendarView,
    onViewChanged: (ViewChangedDetails viewChangedDetails) {
      if (_calendarView == CalendarView.week) {
        _text = DateFormat('MMMM yyyy')
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
      SchedulerBinding.instance.addPostFrameCallback((duration) {
        setState(() {});
      });
    },
  )
),
```

> addPostFrameCallback will be called after the widget build() is completed.

**[View document in Syncfusion Flutter Knowledge base](https://www.syncfusion.com/kb/10997/how-to-add-custom-header-and-view-header-in-flutter-event-calendar-sfcalendar-widget)**
 
<img alt="custom headers"  src="https://github.com/SyncfusionExamples/header-customization-calendar-flutter/blob/master/Screenshots/customized%20header.jpg" width="350" height="500" />|




