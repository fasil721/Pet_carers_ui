import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/Screens/sign_up.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textFactor = MediaQuery.textScaleFactorOf(context);
    return Container(
      height: height,
      width: width,
      color: const Color(0xff202020),
      child: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -30,
              child: SizedBox(
                height: height * .85,
                child: Image.asset(
                  "assets/ONBOARDING PICTURE.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: width * 0.03,
              top: height * 0.055,
              child: Image.asset(
                "assets/icn1.png",
              ),
            ),
            Positioned(
              left: width * 0.14,
              top: height * 0.062,
              child: Image.asset(
                "assets/dog.png",
                height: height * .038,
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: 10,
                            height: 2,
                            color: Colors.white,
                          ),
                        ),
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xFF404040),
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: 10,
                            height: 2,
                            color: Colors.white,
                          ),
                        ),
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xFF404040),
                          child: Text(
                            "3",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .025,
                    ),
                    Text(
                      "Too tired to walk your dog?",
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.none,
                        fontSize: textFactor * 19,
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Let’s help you!",
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.none,
                        fontSize: textFactor * 19,
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * .025,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.symmetric(horizontal: width * 0.07),
                        child: Center(
                          child: Text(
                            "Join our community",
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
                    SizedBox(
                      height: height * .025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Alredy a member? ",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.none,
                            fontSize: textFactor * 12,
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.none,
                            fontSize: textFactor * 11,
                            color: const Color(0xffFB724C),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .025,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
