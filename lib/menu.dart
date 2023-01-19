import 'package:aplikasi_perhitungan/hitunglingkaran.dart';
import 'package:aplikasi_perhitungan/profil.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_perhitungan/hitungpersegi.dart';

class MenuPage extends StatelessWidget {
  final appTitle = 'Aplikasi PERHITUNGAN ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(title: Text(title)),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark),label:"Tersimpan"),  
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profil"),      
      ]),
      body: 
      
      Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
        
          child: Column(
    
            children: [
              Text("Pilih Menu",
              style: TextStyle(
                fontSize: 30,
                fontFamily:"Acme",
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height:10),
              Column(
                children: [
                  new GestureDetector(
                        child: Container(
                        height: 120,
                        width: 500,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blue[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        ),
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(          
                            children: <Widget>[
                            Icon(Icons.architecture,
                            size: 80,
                            ),
                            Text('Hitung Persegi')
                            ],
                        ),
                          ),
                      ),
                      onTap: () {
                        Route route = MaterialPageRoute(builder: (context) => HitungApp());
                        Navigator.push(context, route);
                      },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  new GestureDetector(
                    child: Container(
                    height: 120,
                    width: 500,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue[300],
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                        Icon(Icons.calculate_rounded,
                        size: 80,
                        ),
                        Text('Hitung Lingkaran')
                        ],
                      ),
                      ),
                    ),
                   onTap: () {
                        Route route = MaterialPageRoute(builder: (context) => HitungLingkaranApp());
                        Navigator.push(context, route);
                      }, 
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  new GestureDetector(
                    child: Container(
                    height: 120,
                    width: 500,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue[300],
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                        Icon(Icons.photo_camera_back_rounded,
                        size: 80,
                        ),
                        Text('Profile Developer')
                        ],
                      ),
                      ),
                    ),
                   onTap: () {
                        Route route = MaterialPageRoute(builder: (context) => MyProfileApp());
                        Navigator.push(context, route);
                      }, 
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('PROGRAM PERHITUNGAN'),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              title: Text('Hitung Persegi'),
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) => HitungApp());
                Navigator.push(context, route);
              },
            ),
           ListTile(
              title: Text('Hitung Lingkaran'),
              onTap: () {
               Route route = MaterialPageRoute(builder: (context) => HitungLingkaranApp());
              Navigator.push(context, route);
              },
            ),
            ListTile(
              title: Text('Kontak Developer'),
              onTap: () {
               Route route = MaterialPageRoute(builder: (context) => MyProfileApp());
              Navigator.push(context, route);
              },
            ), 
          ],
        ),
      ),
       
      );
        
  }
}