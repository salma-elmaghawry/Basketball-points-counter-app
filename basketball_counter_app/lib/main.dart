import 'package:flutter/material.dart';

void main() {
  runApp( PointsCounter());
}

class PointsCounter extends StatelessWidget {
  int teamAPoints = 0;
  int teamBPoints = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 233, 152, 32),
            title: const Text('Points Counter'),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    //colum for team A
                    children: [
                      //Text widget for team name
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      //Text Widget for Score Counter
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            primary: Color.fromARGB(255, 233, 152, 32),
                            minimumSize: Size(150, 50)),
                        onPressed: () {},
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 233, 152, 32),
                            minimumSize: Size(150, 50)),
                        onPressed: () {},
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 233, 152, 32),
                            minimumSize: Size(150, 50)),
                        onPressed: () {},
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    //colum for team B
                    children: [
                      //Text widget for team name
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      //Text Widget for Score Counter
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 233, 152, 32),
                            minimumSize: Size(150, 50)),
                        onPressed: () {},
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 233, 152, 32),
                            minimumSize: Size(150, 50)),
                        onPressed: () {},
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 233, 152, 32),
                            minimumSize: Size(150, 50)),
                        onPressed: () {},
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 233, 152, 32),
                    minimumSize: Size(150, 50)),
                onPressed: () {},
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
