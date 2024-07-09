import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'signup_page.dart';
import '../globals.dart' as globals;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  void _login(BuildContext context) async {
    String id = _idController.text;
    String password = _passwordController.text;
    Socket socket;
    try {
      socket = await Socket.connect('192.168.160.106', 5000);

      String message = 'Login-$id-$password';
      socket.write(message);

      socket.listen((Uint8List data) {
        int responseCode = data[0];
        if (responseCode == 0) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomePage(id: id)),
            (Route<dynamic> route) => false,
          );
        } else if (responseCode == 1) {
          print('Login failed: Incorrect ID or password.');
        } else {
          print('Unexpected response from server: $responseCode');
        }
      });
      await socket.close();
    } catch (e) {
      print('Failed to connect to the server: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFAFBBC1),
      body: Center(
        child: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.08),
              SizedBox(
                width: screenWidth * 0.24,
                child: Image.asset("assets/images/SbuLogo.png"),
              ),
              SizedBox(height: screenHeight * 0.05),
              SizedBox(
                width: screenWidth * 0.8,
                child: Column(
                  children: [
                    Stack(children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: screenHeight * 0.00577,
                              bottom: screenWidth * 0.00577),
                          width: screenWidth * 0.75,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD0D0D0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                            border: Border.all(
                                color: const Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _idController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.4)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: screenWidth * 0.042,
                                    left: screenWidth * 0.12,
                                    top: screenHeight * 0.030),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "شماره دانشجویی"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: screenWidth * 0.155,
                          height: screenWidth * 0.155,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD0D0D0),
                            border: Border.all(
                                color: const Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                          ),
                          child: Icon(
                            Icons.contacts_outlined,
                            color: const Color(0xFF1D7084),
                            size: screenWidth * 0.1,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: screenHeight * 0.01),
                    Stack(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: screenHeight * 0.00577,
                              bottom: screenWidth * 0.00577),
                          width: screenWidth * 0.75,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD0D0D0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                            border: Border.all(
                                color: const Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.4)),
                              ),
                              contentPadding: EdgeInsets.only(
                                right: screenWidth * 0.12,
                                left: screenWidth * 0.042,
                                top: screenHeight * 0.030,
                              ),
                              hintTextDirection: TextDirection.rtl,
                              hintText: 'رمز عبور',
                              prefixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: screenWidth * 0.155,
                          height: screenWidth * 0.155,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD0D0D0),
                            border: Border.all(
                                color: const Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                          ),
                          child: Icon(
                            Icons.lock_open,
                            color: const Color(0xFF1D7084),
                            size: screenWidth * 0.1,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: screenHeight * 0.01),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              SizedBox(
                width: screenWidth * 0.75,
                height: screenHeight * 0.06,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xFF7A0C31)),
                  ),
                  onPressed: () => _login(context),
                  // Pass context to _login method
                  child: Text(
                    "ورود به حساب کاربری",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: const Color(0xFFAFBBC1),
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.050),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    "حساب کاربری ندارید؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: const Color(0xFF0029FF),
                        fontSize: screenWidth * 0.05,
                        fontFamily: "BNazanin",
                        fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                          (Route<dynamic> route) => false,
                    ),
                    child: Text(
                      "ثبت نام",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: const Color(0xFF0029FF),
                          fontSize: screenWidth * 0.05,
                          fontFamily: "BNazanin",
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xFF0029FF),
                          decorationThickness: screenWidth * 0.005),
                    ),
                  ),
                  Text(
                    "کنید.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: const Color(0xFF0029FF),
                        fontSize: screenWidth * 0.05,
                        fontFamily: "BNazanin",
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: screenWidth,
                      child: Image.asset("assets/images/sbu-building.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.passwordController,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });

  final TextEditingController? passwordController;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return TextFormField(
      controller: widget.passwordController,
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.4)),
        ),
        contentPadding: EdgeInsets.only(
          right: screenWidth * 0.12,
          left: screenWidth * 0.042,
          top: screenHeight * 0.030,
        ),
        filled: true,
        hintTextDirection: TextDirection.rtl,
        hintText: widget.hintText,
        prefixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
