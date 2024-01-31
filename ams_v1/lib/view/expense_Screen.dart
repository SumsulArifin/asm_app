import 'package:ams_v1/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/color.dart';

class Expense_Screen extends StatefulWidget {
  const Expense_Screen({Key? key}) : super(key: key);

  @override
  State<Expense_Screen> createState() => _Expense_ScreenState();
}

class _Expense_ScreenState extends State<Expense_Screen> {

  String _dropDownValue = 'Electricity';

  DateTime _selectedDate = DateTime.now();

  TextEditingController _dateController = TextEditingController();

  void _navigateToOtherPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffbf8d3),
        // backgroundColor: Colors.greenAccent,
        title: Center(
          child: Text(
            "Expense",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              height: 15,
              color: Color(0xff000000),
            ),
          ),
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),
        elevation: 4.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            _navigateToOtherPage(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle menu icon press
            },
          ),
        ], // Set the elevation to add a shadow
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(25.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xfffbf8d3),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Select Expense Type :"),
                SizedBox(
                  width: 20,
                ),
                DropdownButton<String>(
                  value: _dropDownValue,
                  icon: Icon(Icons.arrow_drop_down),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  underline: Container(
                    height: 2,
                    color: Colors.black26,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _dropDownValue = newValue!;
                    });
                  },
                  items: const [
                    DropdownMenuItem<String>(
                      value: 'Electricity',
                      child: Text('Electricity'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Water',
                      child: Text('Water'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Guard',
                      child: Text('Guard'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                // ),
                ElevatedButton.icon(
                  onPressed: () async {
                    final DateTime? datetime = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000),
                    );
                    if (datetime != null) {
                      setState(() {
                        _selectedDate = datetime;
                        _dateController.text =
                        "${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}";
                      });
                    }
                  },
                  label: Text("Chooose Date"),
                  icon: Icon(Icons.date_range_sharp),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.greenAccent,
                    ), // Change Colors.blue to the color you want
                  ),
                ),
                // Text(
                //   "${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}",
                // ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    width: 350,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xfffbf8d3),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: _dateController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.date_range_sharp),
                            labelText: 'Date',
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.attach_money),
                            labelText: 'Amount',
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.description),
                            labelText: 'Description',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: () async {
                final DateTime? datetime = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (datetime != null) {
                  setState(() {
                    _selectedDate = datetime;
                    _dateController.text =
                    "${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}";
                  });
                }
              },
              label: Text("Save"),
              icon: Icon(Icons.save_alt_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.greenAccent,
                ), // Change Colors.blue to the color you want
              ),
            ),
          ],
        ),
      ),
    );
  }
}