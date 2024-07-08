import 'package:flutter/material.dart';
import '../globals.dart' as globals;
// import 'package:file_picker/file_picker.dart';

class TamrinaPage extends StatefulWidget {
  const TamrinaPage({super.key});

  @override
  State<TamrinaPage> createState() => _TamrinaPageState();
}

class _TamrinaPageState extends State<TamrinaPage> {
  DateTime? _selectedData = DateTime(2023);
  // String? _fileName;
  // String? _filePath;
  //
  // Future<void> _pickFile() async {
  //   FilePickerResult? result = await FilePicker.platform.pickFiles();
  //
  //   if (result != null) {
  //     setState(() {
  //       _fileName = result.files.single.name;
  //       _filePath = result.files.single.path;
  //     });
  //   }
  // }

  Future<void> _showDataPicker(BuildContext context) async {
    var screenHeight = MediaQuery.of(context).size.height;

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2028),
    );
    if (picked != null && picked != _selectedData) {
      _selectedData = picked;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(bottom: screenHeight * 0.029),
          content: Text(
            'زمان انتخاب شده: ${picked.toString()}',
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
                    Text("24 فروردین 1403",
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
