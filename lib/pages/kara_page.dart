import 'dart:convert';

import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:http/http.dart' as http;

class KaraPage extends StatefulWidget {
  KaraPage({required this.id, super.key});

  String id;

  @override
  State<KaraPage> createState() => _KaraPageState();
}

class _KaraPageState extends State<KaraPage> {
  @override
  void initState() {
    super.initState();
    _updateTasks();
  }

  Future<void> _updateTasks() async {
    await globals.fetchTasks(widget.id);
  }

  Jalali? _selectedDate = Jalali.now();
  TimeOfDay? _selectedTime = const TimeOfDay(hour: 0, minute: 0);
  String? _textEditing = "";
  final TextEditingController _textEditingController = TextEditingController();

  Future<void> _showDataPicker(BuildContext context) async {
    var screenHeight = MediaQuery.of(context).size.height;

    Jalali? picked = await showPersianDatePicker(
      context: context,
      initialDate: Jalali.now(),
      firstDate: Jalali(1403),
      lastDate: Jalali(1420),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(bottom: screenHeight * 0.029),
          content: Text(
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            'زمان انتخاب شده: ${picked.formatFullDate()}',
          ),
          action: SnackBarAction(label: 'باشه', onPressed: () {}),
        ),
      );
    }
  }

  Future<void> _showTimePicker(BuildContext context) async {
    var screenHeight = MediaQuery.of(context).size.height;

    final TimeOfDay? picked = await showPersianTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      _selectedTime = picked;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(bottom: screenHeight * 0.029),
          content: Text(
            'زمان انتخاب شده: ${picked.persianFormat(context)}',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
          action: SnackBarAction(label: 'باشه', onPressed: () {}),
        ),
      );
    }
  }

  Future<void> _addTask() async {
    final url = Uri.parse('http://192.168.20.106:8080/AddTask');
    final response = await http
        .post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'id': widget.id,
            'title': _textEditing,
            'year': Jalali.now().toDateTime().year,
            'month': Jalali.now().toDateTime().month,
            'day': Jalali.now().toDateTime().day,
            'hour': (_selectedTime == null) ? 0 : _selectedTime!.hour,
            'minute': (_selectedTime == null) ? 0 : _selectedTime!.minute,
          }),
        )
        .timeout(const Duration(seconds: 200));
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFAFBBC1),
      body: Center(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.021),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.042),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("کار ها",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.044,
                            fontWeight: FontWeight.bold)),
                    IconButton(
                      onPressed: () {
                        globals.fetchTasks(widget.id);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.refresh,
                        color: const Color(0xFF7A0C31),
                        size: screenWidth * 0.063,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.042),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(_selectedDate!.formatFullDate(),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.021,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                    IconButton(
                      onPressed: () => _showDataPicker(context),
                      icon: Icon(Icons.calendar_month,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth * 0.052),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: globals.taskWidgets
                      .where((element) => !element.isDone && _selectedDate == Jalali.fromDateTime(element.deadLine))
                      .toList(),
                ),
              )),
              SizedBox(height: screenHeight * 0.050),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.042),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("کار های انجام شده",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.044,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: globals.taskWidgets
                      .where((element) => element.isDone && _selectedDate == Jalali.fromDateTime(element.deadLine))
                      .toList(),
                ),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF7A0C31),
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (BuildContext context) => Container(
              width: screenWidth,
              height: screenHeight * 0.433,
              decoration: BoxDecoration(
                  color: const Color(0xFF7A0C31),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(screenWidth * 0.042))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.104),
                child: Column(
                  children: [
                    Text(
                      "__________________________________",
                      style: TextStyle(
                        fontSize: screenWidth * 0.025,
                        fontFamily: "BNazanin",
                        decoration: TextDecoration.underline,
                        decorationThickness: screenWidth * 0.015,
                        decorationColor: const Color(0xFFAFBBC1),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.019,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Icon(
                          Icons.edit_calendar,
                          size: screenWidth * 0.052,
                          color: const Color(0xFFAFBBC1),
                        ),
                        SizedBox(
                          width: screenWidth * 0.031,
                        ),
                        Text("افزودن کار جدید",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: const Color(0xFFAFBBC1),
                                fontFamily: "BTitr",
                                fontSize: screenWidth * 0.044,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.014,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text("عنوان:",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: const Color(0xFFAFBBC1),
                                fontFamily: "BTitr",
                                fontSize: screenWidth * 0.029,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.010,
                    ),
                    Container(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.072,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD0D0D0),
                        borderRadius: BorderRadius.all(
                            Radius.circular(screenWidth * 0.042)),
                        border: Border.all(
                            color: const Color(0xFF1D7084),
                            width: screenWidth * 0.006),
                      ),
                      child: TextField(
                        controller: _textEditingController,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(screenWidth * 0.042)),
                            ),
                            contentPadding: EdgeInsets.only(
                                right: screenWidth * 0.042,
                                left: screenWidth * 0.042,
                                top: screenHeight * 0.041),
                            hintTextDirection: TextDirection.rtl,
                            hintText: "بازم کار جدید :)"),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.014,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text("برای:",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: const Color(0xFFAFBBC1),
                                fontFamily: "BTitr",
                                fontSize: screenWidth * 0.029,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.010,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              size: screenWidth * 0.042,
                              color: const Color(0xFFAFBBC1),
                            ),
                            SizedBox(
                              width: screenWidth * 0.010,
                            ),
                            Container(
                              width: screenWidth * 0.208,
                              height: screenHeight * 0.019,
                              decoration: BoxDecoration(
                                color: const Color(0xFFAFBBC1),
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.010),
                              ),
                              child: Center(
                                child: Text(_selectedDate!.formatFullDate(),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontFamily: "BTitr",
                                        fontSize: screenWidth * 0.021,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.notifications_active,
                          size: screenWidth * 0.042,
                          color: const Color(0xFFAFBBC1),
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.010,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => const Color(0xFFAFBBC1))),
                      onPressed: () => _showTimePicker(context),
                      child: Text("انتخاب زمان",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * .029,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: screenHeight * 0.034,
                    ),
                    SizedBox(
                      width: screenWidth * 0.75,
                      height: screenHeight * 0.048,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => const Color(0xFFAFBBC1)),
                        ),
                        onPressed: () {
                          setState(() {
                            _textEditing = _textEditingController.value.text;
                          });
                          _addTask();
                          Navigator.pop(context);
                        },
                        child: Text(
                          "افزودن",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: const Color(0xFF7A0C31),
                              fontFamily: "BTitr",
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.044),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: const Color(0xFFAFBBC1),
          size: screenWidth * 0.063,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
