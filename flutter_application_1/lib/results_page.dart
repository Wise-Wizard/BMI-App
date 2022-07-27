import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmi, required this.index, required this.interpretaion});
  final bmi;
  final index;
  final interpretaion;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0321),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'RESULTS',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
                child: ReusableCard(
                    onPress: () {},
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          index,
                          style: TextStyle(
                              color: Color(0xFF24D876),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          bmi,
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 100),
                        ),
                        Text(
                          interpretaion,
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ))),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-ÇALCULATE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                color: Color(0xFFEB1555),
                width: double.infinity,
                height: 80,
                margin: EdgeInsets.only(top: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
