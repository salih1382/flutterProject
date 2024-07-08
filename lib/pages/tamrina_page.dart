import 'package:flutter/material.dart';
import '../globals.dart' as globals;
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class TamrinaPage extends StatefulWidget {
  TamrinaPage({required this.id, super.key});

  String id;

  @override
  State<TamrinaPage> createState() => _TamrinaPageState();
}

class _TamrinaPageState extends State<TamrinaPage> {
  Jalali? _selectedDate = Jalali.now();

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
            'زمان انتخاب شده: ${picked.formatFullDate()}',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
          action: SnackBarAction(label: 'باشه', onPressed: () {}),
        ),
      );
    }
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
                    Text("تمرین ها",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.044,
                            fontWeight: FontWeight.bold)),
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
                  children: globals.assignmentWidgets,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
