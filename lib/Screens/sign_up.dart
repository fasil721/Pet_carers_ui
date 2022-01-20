import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:machine_test/main.dart';
import 'package:machine_test/user_model.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final userModel = UserModel();
  final url = "https://api.m3o.com/v1/user/Create";
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textFactor = MediaQuery.textScaleFactorOf(context);
    void signUp() async {
      userModel.email = emailController.text;
      userModel.password = passwordController.text;
      userModel.username = fullnameController.text;
      userModel.id = "hj";

      try {
        print(userModel.toJson());
        final response = await post(Uri.parse(url), body: userModel.toJson());
        print(response.statusCode);
        print(response.body);
      } catch (e) {
        print(e);
      }
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Column(
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
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Fullname",
                        ),
                        validator: (value) {
                          final regex = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return "fullname is required for signup";
                          }
                          if (!regex.hasMatch(value)) {
                            return "Enter Valid Password(Min. 4 Character)";
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
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Email",
                        ),
                        validator: (value) {
                          final regex =
                              RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]");
                          if (value!.isEmpty) {
                            return "Please Enter Your Email";
                          }
                          if (!regex.hasMatch(value)) {
                            return "Please Enter a valid email";
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
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: "Password",
                        ),
                        validator: (value) {
                          final regex = RegExp(r'^.{4,}$');
                          if (value!.isEmpty) {
                            return "Password is required for singup";
                          }
                          if (!regex.hasMatch(value)) {
                            return "Enter Valid Password(Min. 4 Character)";
                          }
                        },
                      ),
                      SizedBox(
                        height: height * .025,
                      ),
                      GestureDetector(
                        onTap: () {
                          SystemChannels.textInput
                              .invokeMethod("TextInput.hide");

                          if (_formkey.currentState!.validate()) {
                            signUp();
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyApp(),
                              ),
                              (route) => false,
                            );
                          }
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
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Padding(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
