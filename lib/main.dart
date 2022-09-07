import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const myRecov());
}

class myRecov extends StatefulWidget {
  const myRecov({Key? key}) : super(key: key);

  @override
  State<myRecov> createState() => _myRecovState();
}

class _myRecovState extends State<myRecov> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                Icons.grain,
                color: Colors.black,
                size: 30,
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 234, 234),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3))
                        ]),
                    child: FaIcon(
                      FontAwesomeIcons.bell,
                      color: Colors.black,
                    ),
                  ))
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("hello, osman muhudin",
                          style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(height: 5),
                      Text("welcome to your home",
                          style: GoogleFonts.roboto(
                              color: Colors.black, fontSize: 15)),

                      //card
                      SizedBox(height: 15),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadowColor: Colors.blue.shade800,
                        child: Container(
                          height: 160,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    Colors.blue.shade300,
                                    Colors.blue.shade800
                                  ])),
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 30, top: 20),
                                  child: Column(
                                    children: [
                                      Icon(Icons.cloudy_snowing,
                                          size: 80, color: Colors.white),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "cloudy",
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 22,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "10 september 2022 ",
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "27º",
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Rooms",
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.add,
                                  color: Color.fromARGB(255, 126, 231, 129),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "add",
                                  style: GoogleFonts.roboto(
                                    color: Color.fromARGB(255, 27, 236, 34),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //secound card
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFFEE2E5)),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: FaIcon(FontAwesomeIcons.bed,
                                    color: Colors.green),
                              ),
                              SizedBox(width: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "living room",
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("7 devices",
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ))
                                ],
                              ),
                              SizedBox(width: 50),
                              Container(
                                child: Column(
                                  children: [
                                    Switch(
                                      value: true,
                                      onChanged: null,
                                      hoverColor: Colors.blue.shade200,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //secound_card
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 246, 255, 181)),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: FaIcon(
                                  FontAwesomeIcons.bath,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bath Room",
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("7 devices",
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ))
                                ],
                              ),
                              SizedBox(width: 50),
                              Container(
                                child: Column(
                                  children: [
                                    Switch(
                                      value: false,
                                      onChanged: null,
                                      hoverColor: Colors.blue.shade200,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //third card
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: 400,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 187, 214, 255)),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: FaIcon(
                                  FontAwesomeIcons.bed,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(width: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bed Room",
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("7 devices",
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ))
                                ],
                              ),
                              SizedBox(width: 50),
                              Container(
                                child: Column(
                                  children: [
                                    Switch(
                                      value: true,
                                      onChanged: null,
                                      hoverColor: Colors.blue.shade200,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}
