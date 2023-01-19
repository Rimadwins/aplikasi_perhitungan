

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blueGrey,
        title: Text("About Me",
        style: TextStyle(
          fontFamily: "Acme"
        ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:  AssetImage("asset/image/round.jpg")
                      ),
                      borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2), 
                    ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Name : Rima Dwi Nopasari",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Acme"
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "NPM : 2010020019",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Acme"
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Class : 5A NonReguler Banjarmasin",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Acme"
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Contact : 081350032285",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Acme"
                      ),
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Address : Jl.Pramuka Komplek Rahayu Banjarmasin",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Acme"
                      ),
                    )
                ],
                ),
        ),
      )
    );
  }
}





           


              
              