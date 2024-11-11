import 'package:basketball_counter_app/const.dart';
import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:basketball_counter_app/widgets/custom_elevatedbutton.dart';
import 'package:basketball_counter_app/widgets/team_a.dart';
import 'package:basketball_counter_app/widgets/team_b.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        int teamAPoints = 0;
        int teamBPoints = 0;

        if (state is CounterUpdated) {
          teamAPoints = state.teamAPoints;
          teamBPoints = state.teamBPoints;
        }
        if (state is CounterUpdated) {}
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: const Text(
              'Points Counter',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 130,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamA(teamPoints: teamAPoints,),
                  const SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  //team B
                  TeamB(teamPoints: teamBPoints,),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              CustomElevatedbutton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetTeamAPoints();
                    BlocProvider.of<CounterCubit>(context).resetTeamBPoints();
                  },
                  backgroundColor: primaryColor,
                  text: "Reset")
            ],
          ),
        );
      },
    );
  }
}
