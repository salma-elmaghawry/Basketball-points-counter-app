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
          backgroundColor: Color.fromARGB(255, 233, 152, 32),
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
            ),
            
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              primary:Color.fromARGB(255, 233, 152, 32),
              minimumSize: Size(150, 50)
            ),
            onPressed: (){},
            child: Text('Add 1 Point',style: TextStyle(
              fontSize: 19,
              color: Colors.black,
            ),),
            
            ),
            const Spacer(flex: 1,),

            ElevatedButton(
            style:ElevatedButton.styleFrom(
              primary:Color.fromARGB(255, 233, 152, 32),
              minimumSize: Size(150, 50)
            ),

            onPressed: (){},
            child: Text('Add 2 Point',style: TextStyle(
              fontSize: 19,
              color: Colors.black,
            ),),
            
            ),
            const Spacer(flex: 1,),
            ElevatedButton(
            style:ElevatedButton.styleFrom(
              primary:Color.fromARGB(255, 233, 152, 32),
              minimumSize: Size(150, 50)
            ),
            onPressed: (){},
            child: Text('Add 3 Point',style: TextStyle(
              fontSize: 19,
              color: Colors.black,
            ),),
            
            ),
            const Spacer(flex: 10,)
          ], 
        ),
      )
    );
  }
}


