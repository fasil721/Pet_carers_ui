import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test/Screens/person_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final nearYou = [
    {"title": "Mason York", 'image': "assets/img2.png", "location": "7 km"},
    {"title": "Mark Greene", 'image': "assets/img4.png", "location": "14 km"},
  ];
  final suggested = [
    {"title": "Mark Greene", 'image': "assets/img1.png", "location": "2 km"},
    {"title": "Trina Kain", 'image': "assets/img3.png", "location": "4 km"},
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textFactor = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.none,
                          fontSize: textFactor * 27,
                          color: Colors.black.withOpacity(0.9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Exploredog walkers",
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.none,
                          fontSize: textFactor * 14,
                          color: Colors.grey.withOpacity(0.9),
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: width * .25,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffFB724C),
                          Color(0xffFE904B),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 17,
                        ),
                        Text(
                          "Book a walk",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.none,
                            fontSize: textFactor * 9,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * .025,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListTile(
                tileColor: const Color(0xffE7EAF0),
                textColor: const Color(0xffE7EAF0),
                contentPadding: const EdgeInsets.only(
                  left: 15.0,
                ),
                dense: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                trailing: Wrap(
                  children: [
                    const Icon(
                      Icons.scatter_plot_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    )
                  ],
                ),
                leading: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                ),
                title: Text(
                  "Kyiv, Ukraine",
                  style: GoogleFonts.recursive(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near you",
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.none,
                      fontSize: textFactor * 27,
                      color: Colors.black.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.underline,
                      fontSize: textFactor * 12,
                      color: Colors.black.withOpacity(0.9),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: height * 0.23,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearYou.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersonView(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: width * 0.45,
                            child: Image.asset(
                              nearYou[index]["image"].toString(),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    nearYou[index]["title"].toString(),
                                    style: GoogleFonts.poppins(
                                      decoration: TextDecoration.none,
                                      fontSize: textFactor * 14,
                                      color: Colors.black.withOpacity(0.9),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: width * 0.005,
                                      ),
                                      Text(
                                        "${nearYou[index]["location"]} from you",
                                        style: GoogleFonts.poppins(
                                          decoration: TextDecoration.none,
                                          fontSize: textFactor * 9,
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: width * 0.12,
                              ),
                              Container(
                                width: width * .1,
                                height: height * 0.025,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2B2B2B),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "5/h",
                                    style: GoogleFonts.poppins(
                                      decoration: TextDecoration.none,
                                      fontSize: textFactor * 8,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: width * 0.12,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Divider(
                thickness: 0.6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Suggesed",
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.none,
                      fontSize: textFactor * 25,
                      color: Colors.black.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.poppins(
                      decoration: TextDecoration.underline,
                      fontSize: textFactor * 12,
                      color: Colors.black.withOpacity(0.9),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: height * 0.23,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearYou.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersonView(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: width * 0.45,
                            child: Image.asset(
                              suggested[index]["image"].toString(),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    suggested[index]["title"].toString(),
                                    style: GoogleFonts.poppins(
                                      decoration: TextDecoration.none,
                                      fontSize: textFactor * 14,
                                      color: Colors.black.withOpacity(0.9),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: width * 0.005,
                                      ),
                                      Text(
                                        "${suggested[index]["location"]} from you",
                                        style: GoogleFonts.poppins(
                                          decoration: TextDecoration.none,
                                          fontSize: textFactor * 9,
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: width * 0.09,
                              ),
                              Container(
                                width: width * .1,
                                height: height * 0.025,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2B2B2B),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "3/h",
                                    style: GoogleFonts.poppins(
                                      decoration: TextDecoration.none,
                                      fontSize: textFactor * 8,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: width * 0.12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
