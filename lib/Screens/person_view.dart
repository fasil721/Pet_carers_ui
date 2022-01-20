import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonView extends StatelessWidget {
  const PersonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textFactor = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/IMAGE (1).png",
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/CLOSE.png",
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  "assets/VERIFIED.png",
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFB),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                height: height * .5,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .03,
                    ),
                    Text(
                      "Alex Murray",
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.none,
                        fontSize: textFactor * 27,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * .015,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "5\$",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "/hr   |   ",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: "10",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " km   |   ",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: "4.4",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "   |   ",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: "450",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " walks",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.none,
                              fontSize: textFactor * 11,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Divider(
                        thickness: 0.5,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: height * 0.05,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xff2B2B2B),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "About",
                                style: GoogleFonts.poppins(
                                  decoration: TextDecoration.none,
                                  fontSize: textFactor * 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: height * 0.05,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "Location",
                                style: GoogleFonts.poppins(
                                  decoration: TextDecoration.none,
                                  fontSize: textFactor * 12,
                                  color: const Color(0xffB0B0B0),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: height * 0.05,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "Reviews",
                                style: GoogleFonts.poppins(
                                  decoration: TextDecoration.none,
                                  fontSize: textFactor * 12,
                                  color: const Color(0xffB0B0B0),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Age",
                                  style: GoogleFonts.poppins(
                                    decoration: TextDecoration.none,
                                    fontSize: textFactor * 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "30 Years",
                                  style: GoogleFonts.poppins(
                                    decoration: TextDecoration.none,
                                    fontSize: textFactor * 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: GoogleFonts.poppins(
                                    decoration: TextDecoration.none,
                                    fontSize: textFactor * 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "11 Months",
                                  style: GoogleFonts.poppins(
                                    decoration: TextDecoration.none,
                                    fontSize: textFactor * 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 100,
                        left: 15,
                      ),
                      child: Text(
                        "Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...",
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.none,
                          fontSize: textFactor * 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          bottom: 10,
                        ),
                        child: Text(
                          "Read more",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.none,
                            fontSize: textFactor * 12,
                            color: const Color(0xffFB724C),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Container(
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
                      margin: EdgeInsets.symmetric(horizontal: width * 0.03),
                      child: Center(
                        child: Text(
                          "Check Schedule",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.none,
                            fontSize: textFactor * 14,
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
