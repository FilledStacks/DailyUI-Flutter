import 'package:flutter/material.dart';

class DayOne extends StatelessWidget {
  final lightBlueColor = Color.fromARGB(255, 113, 120, 146);
  final darkBlueColor = Color.fromARGB(255, 56, 65, 94);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 30.0,
        width: 120.0,
        decoration: BoxDecoration(border: Border.all(color: darkBlueColor)),
        child: Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text('Proceed', style: TextStyle(color: darkBlueColor))),
            Expanded(
                child: Container(
              color: darkBlueColor,
              height: 30.0,
                  child: Icon(Icons.chevron_right, color: Colors.white),
            ))
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(children: [
            Container(
              height: 300.0,
            child: Image.asset('assets/one/product-image.png', fit: BoxFit.cover,),),
            Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 25.0, top: 35.0), child: Text('Order Number: 1089 999 09')),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                  decoration: BoxDecoration(
                      color: darkBlueColor,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Theme(
                    data: ThemeData(hintColor: lightBlueColor),
                    child: Column(
                      children: <Widget>[
                        Container(height: 12.0),
                        Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: 'Cardnumber',
                              hintStyle: TextStyle(color: lightBlueColor),
                            ))),
                        Container(height: 15.0),
                        Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.0,
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: 'Card holders name',
                              hintStyle: TextStyle(color: lightBlueColor),
                            ))),
                        Container(height: 15.0),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                  ),
                                  child: TextField(
                                      decoration: InputDecoration(
                                    hintText: 'Expiration Date',
                                    hintStyle: TextStyle(color: lightBlueColor),
                                  ))),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0,
                                  ),
                                  child: TextField(
                                      decoration: InputDecoration(
                                    hintText: 'CVV',
                                    hintStyle: TextStyle(color: lightBlueColor),
                                  ))),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 25.0, top: 5.0), child:Text('Payment secored by 3D payments')),
              ],
            ))
          ]),
          Positioned(
              left: 145.0, top: 265.0,
              child: Container(
                width: 120.0,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(40, 0, 0, 0),
                          blurRadius: 4.0,
                          spreadRadius: 6.0
                      )
                    ]
                ),
                child: Padding(padding: EdgeInsets.only(left: 18.0, top: 7.0), child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('TOTAL', style: TextStyle(fontSize: 12.0),),
                    Text('R 435.90', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),)
                  ],
                ),)
              )
          ),
        ],
      ),
    );
  }
}
