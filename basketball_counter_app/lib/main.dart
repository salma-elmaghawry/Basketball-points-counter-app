import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}
class PointsCounter extends StatelessWidget
{
  const PointsCounter({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          title: Text('Points Counter'),
        ),
        body: Column(
          //colum for team A 
          children: [
            //Text widget for team name 
            Text('Team A',
            style: TextStyle(
              fontSize: 32,
            ),
            ),
            //Text Widget for Score Counter 
            Text('0',
            style: TextStyle(
              fontSize: 150,
            ),
            )
          ], 
        ),
      )
    );
  }
}


