

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class HitungLingkaranApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blueGrey,
        title: Text("Hitung Lingkaran",
        style: TextStyle(
          fontFamily: "Acme"
        ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
                children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 47,
                  child: MaterialButton(
                  color: Colors.blue,
                  child: Text("Hitung Luas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: "Acme"
                  ),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => LuasLingkaranApp());
                      Navigator.push(context, route);
                  },
                  ),
                ),
                SizedBox(height: 20),
               
                ],
                ),
        ),
      )
    );
  }
}





        class LuasLingkaranApp extends StatefulWidget {
          @override
          _LuasLingkaranAppState createState() => _LuasLingkaranAppState();
        }

        class _LuasLingkaranAppState extends State<LuasLingkaranApp> {
         
          double r = 0;

          var _nama = new TextEditingController();

          @override
          Widget build(BuildContext context) {
            return new Scaffold(
              appBar: new AppBar(
                leading: new Icon(Icons.view_list),
                title: new Text("Menghitung Luas"),
                backgroundColor: Colors.blueGrey,
                centerTitle: true,
                actions: <Widget>[
                  new IconButton(
                    icon: Icon(Icons.person,
                    color: Colors.white,
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
              body: ListView(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(20),
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(top:20),
                            ),
                          new Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  onChanged: (txt){
                                    setState(() {
                                      r = double.parse(txt);
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: "Input Jari-Jari",
                                    suffix: Text("cm"),
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10)
                                    ),
                                    hintText: "Jari-Jari"
                                  ),
                                )
                                ),
                               
                            ],
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(top:20),
                          ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 20
                            ),
                            child: ElevatedButton(
                              onPressed: (){
                                var route = new MaterialPageRoute(
                                  builder: (BuildContext)=>
                                  new LuasLingkaranPage(input_jari: r),
                                );
                                Navigator.of(context).push(route);
                              },
                              
                              
                              child: Text("Hitung Luas",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          
                   }



        






        
              class LuasLingkaranPage extends StatelessWidget {

              LuasLingkaranPage({super.key, required this.input_jari});
              final double input_jari;
     
              
           
                @override
                Widget build(BuildContext context) {
                  double hasil = (input_jari*input_jari* 3.14);
                  return Scaffold(
                    appBar: AppBar(
                      centerTitle: true,
                      title: Text("Hasil"),
                    ),
                    body: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                          Text("Jari-Jari : $input_jari cm2",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme",
                            ),
                          ),
                          
                          SizedBox(height: 5),
                          Text("Jadi Luas Lingkaran adalah : ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54,
                            fontFamily: "Acme"
                          ),
                          ),
                          EasyRichText('$hasil cm2',
                          patternList: [
                                EasyRichTextPattern(
                                  style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                ),
                                targetString: '$hasil cm',
                              ),
                              EasyRichTextPattern(
                                targetString: '2',
                                style: TextStyle(
                                  fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                ),
                                superScript: true,
                                 stringBeforeTarget: 'cm',
                                matchWordBoundaries: false,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
              }




              
              