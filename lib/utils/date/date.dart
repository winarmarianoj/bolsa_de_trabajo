import 'package:flutter/material.dart';

/*class TakeDate extends StatefulWidget {
  const TakeDate({Key? key}) : super(key: key);  
  @override
  TakeDatePage createState() => TakeDatePage();  
}

class TakeDatePage extends State<TakeDate> {
  DateTime selectedDate = DateTime.now();

//   Future<Null> _selectDate(BuildContext context) async {
//     final DateTime picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         firstDate: DateTime(2015, 8),
//         lastDate: DateTime(2101));
//     if (picked != null && picked != selectedDate)
//       setState(() {
//         selectedDate = picked;
//       });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CreatePublicEventScreen(),
      ),
    );
  }
  
}

class CreatePublicEventScreen extends StatefulWidget {
  @override
  State<CreatePublicEventScreen> createState() {
    return CreatePublicEventState();
  }
}

class CreatePublicEventState extends State<CreatePublicEventScreen> {
  String title;
  DateTime date;
  String strDate;
  String startTime;
  String endTime;
  String venue;
  final String createdBy;

  CreatePublicEventState({this.createdBy});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//  @override
//  void initState() {
//    super.initState();
//    _focusNode.addListener(() {
//      print('>>object>>');
//      _selectDate(context);
//    });
//  }
//
//  @override
//  void dispose() {
//    _focusNode.dispose();
//    super.dispose();
//  }

  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: date ?? now,
        firstDate: now,
        lastDate: DateTime(2101));
    if (picked != null && picked != date) {
      print('hello $picked');
      setState(() {
        date = picked;
      });
    }
  }

  Widget buildTitleField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Event Title',
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 12.0,
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Event Title is Required.';
        }
        return null;
      },
      onSaved: (String value) {
        title = value;
      },
    );
  }

  TextEditingController _textEditingController = TextEditingController();
  Widget buildDateField() {
    return TextFormField(
      controller: _textEditingController,
      onTap: () async {
        // Below line stops keyboard from appearing
        FocusScope.of(context).requestFocus(new FocusNode());
        // Show Date Picker Here
        await _selectDate(context);
        _textEditingController.text = DateFormat('yyyy/MM/dd').format(date);
        //setState(() {});
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Event Date',
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 12.0,
        ),
      ),
      validator: (String value) {
        print('date:: ${date.toString()}');
        if (value.isEmpty) {
          return 'Event Date is Required.';
        }
        return null;
      },
      onSaved: (String val) {
        strDate = val;
      },
    );
  }

  Widget buildTimeField({labelText, labelType}) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 12.0,
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Time is Required.';
        }
        return null;
      },
      onSaved: (String value) {
        if (labelType == 'startTime') {
          startTime = value;
        } else {
          endTime = value;
        }
      },
    );
  }

  Widget buildVenueField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Venue',
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 12.0,
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Venue is Required.';
        }
        return null;
      },
      onSaved: (String value) {
        venue = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Public Event'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  'Create Public Event',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 20.0,
                ),
                buildTitleField(),
                SizedBox(
                  height: 20.0,
                ),
                buildDateField(),
                SizedBox(
                  height: 20.0,
                ),
                buildTimeField(labelText: 'Start Time', labelType: 'startTime'),
                SizedBox(
                  height: 20.0,
                ),
                buildTimeField(labelText: 'End Time', labelType: 'endTime'),
                SizedBox(
                  height: 20.0,
                ),
                buildVenueField(),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Color(0xFFF97F8B),
                  child: Text(
                    'Submit Event',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();
//                           createPublicEvent(
//                                   date: date,
//                                   startTime: startTime,
//                                   endTime: endTime,
//                                   title: title,
//                                   venue: venue)
//                               .then((onValue) {
//                             print('value $onValue');
//                           });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/