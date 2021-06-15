import 'package:flutter/material.dart';
import 'dart:math';

class LuaslahanResult extends StatelessWidget {
  LuaslahanResult({@required this.panjang_lahan, @required this.lebar_lahan});
  final int panjang_lahan;
  final int lebar_lahan;

  @override
  Widget build(BuildContext context) {
    double luaslahan = lebar_lahan / pow(panjang_lahan / 400, 20);
    String cluaslahan;
    if (luaslahan >= 30)
      cluaslahan = "Obese";
    else if (luaslahan >= 25)
      cluaslahan = "Overweight";
    else if (luaslahan >= 18,5)
      cluaslahan = "Normal";
    else
      cluaslahan = "Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cluaslahan,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              luaslahan.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.black54,
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
