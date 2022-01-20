import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/Screens/home_page.dart';

class JoinPage extends StatelessWidget {
  JoinPage({Key? key}) : super(key: key);
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textFactor = MediaQuery.textScaleFactorOf(context);
    if (MediaQuery.of(context).viewInsets.bottom > 20) {
      isVisible = false;
    } else {
      isVisible = true;
    }
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's Starts here",
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.none,
                      fontSize: textFactor * 28,
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: height * .005,
                  ),
                  Text(
                    "Fill in Your detial to begin",
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.none,
                      fontSize: textFactor * 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: height * .025,
                  ),
                  TextFormField(
                    controller: fullnameController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: const Color(0xffE7EAF0),
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Fullname",
                    ),
                    validator: (value) {
                      final regex = RegExp(r'^.{4,}$');
                      if (value!.isEmpty) {
                        return "Password is required for login";
                      }
                      if (!regex.hasMatch(value)) {
                        return "Enter Valid Password(Min. 6 Character)";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * .025,
                  ),
                  TextFormField(
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: const Color(0xffE7EAF0),
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Email",
                    ),
                    validator: (value) {
                      final regex = RegExp(r'^.{4,}$');
                      if (value!.isEmpty) {
                        return "Password is required for login";
                      }
                      if (!regex.hasMatch(value)) {
                        return "Enter Valid Password(Min. 6 Character)";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * .025,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: const Color(0xffE7EAF0),
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Password",
                    ),
                    validator: (value) {
                      final regex = RegExp(r'^.{4,}$');
                      if (value!.isEmpty) {
                        return "Password is required for login";
                      }
                      if (!regex.hasMatch(value)) {
                        return "Enter Valid Password(Min. 6 Character)";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * .025,
                  ),
                  GestureDetector(
                    onTap: () {
                      SystemChannels.textInput.invokeMethod("TextInput.hide");
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  HomePage(),
                        ),
                        (route) => false,
                      );
                      // if (_formkey.currentState!.validate()) {
                      //   await Future.delayed(const Duration(seconds: 2));
                      // }
                    },
                    child: Container(
                      width: width,
                      height: height * 0.065,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffFB724C),
                            Color(0xffFE904B),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.none,
                            fontSize: textFactor * 14,
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AnimatedOpacity(
                opacity: isVisible ? 1 : 0,
                duration: const Duration(milliseconds: 200),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.05),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By signing in, i agree with ",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "Terms of Use",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .0025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "and ",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "Privacy Policy",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
