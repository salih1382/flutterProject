import 'dart:convert';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _idIsValid = true;
  bool _obscureText = true;
  bool _passwordIsValid = true;

  bool _validatePassword() {
    setState(() {
      final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
      _passwordIsValid = regex.hasMatch(_passwordController.text) &&
          !_passwordController.text.contains(_usernameController.text);
    });
    return _passwordIsValid;
  }

  bool _validateId() {
    setState(() {
      final regex = RegExp(r'^(?=.*\d)[\d]{8,}$');
      _idIsValid = regex.hasMatch(_idController.text);
    });
    return _idIsValid;
  }

  void _signup(BuildContext context) async {
    String id = _idController.text;
    String email = _usernameController.text;
    String password = _passwordController.text;

    var url = Uri.parse('http://192.168.20.106:8080/SignUp');
    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'id': id, 'password': password, 'username': email}),
    );

    if (response.statusCode == 210) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomePage(id: id)),
        (Route<dynamic> route) => false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid credentials')),
      );
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
              SizedBox(
                height: screenHeight * 0.08,
              ),
              SizedBox(
                  width: screenWidth * 0.24,
                  child: Image.asset("assets/images/SbuLogo.png")),
              SizedBox(
                height: screenHeight * 0.05,
              ),
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
                    _idIsValid
                        ? SizedBox(
                            height: screenHeight * 0.01,
                          )
                        : Text(
                            "شماره دانشجویی باید فقط شامل عدد باشد.",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: screenWidth * 0.03,
                                fontFamily: "BNazanin",
                                fontWeight: FontWeight.w800),
                          ),
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
                            controller: _usernameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.4)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: screenWidth * 0.12,
                                    left: screenWidth * 0.042,
                                    top: screenHeight * 0.030),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "نام کاربری"),
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
                            Icons.person_outline_rounded,
                            color: const Color(0xFF1D7084),
                            size: screenWidth * 0.1,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
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
                            controller: _passwordController,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(screenWidth * 0.4),
                                ),
                              ),
                              contentPadding: EdgeInsets.only(
                                right: screenWidth * 0.042,
                                left: screenWidth * 0.12,
                                top: screenHeight * 0.030,
                              ),
                              hintTextDirection: TextDirection.rtl,
                              hintText: 'رمز عبور',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
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
                            Icons.lock_open,
                            color: const Color(0xFF1D7084),
                            size: screenWidth * 0.1,
                          ),
                        ),
                      ),
                    ]),
                    _passwordIsValid
                        ? SizedBox(
                            height: screenHeight * 0.03,
                          )
                        : Text(
                            "رمز عبور باید حداقل دارای 8 حرف و شامل یک حرف بزرگ، یک حرف کوچک و یک عدد باشد و نباید شامل نام کاربری باشد.",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: screenWidth * 0.03,
                                fontFamily: "BNazanin",
                                fontWeight: FontWeight.w800),
                          ),
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth * 0.75,
                height: screenHeight * 0.06,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xFF7A0C31)),
                  ),
                  onPressed: () {
                    _validatePassword() && _validateId()
                        ? null
                        : _signup(context);
                  },
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
              SizedBox(
                height: screenHeight * 0.050,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    "حساب کاربری دارید؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: const Color(0xFF0029FF),
                        fontSize: screenWidth * 0.05,
                        fontFamily: "BNazanin",
                        fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                      onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                            (Route<dynamic> route) => false,
                      ),
                      child: Text(
                        "وارد شوید!",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: const Color(0xFF0029FF),
                            fontSize: screenWidth * 0.05,
                            fontFamily: "BNazanin",
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                            decorationColor: const Color(0xFF0029FF),
                            decorationThickness: screenWidth * 0.005),
                      )),
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
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
