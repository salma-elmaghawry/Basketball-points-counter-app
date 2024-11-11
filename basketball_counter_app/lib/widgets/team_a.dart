import 'package:basketball_counter_app/const.dart';
import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/widgets/custom_elevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamA extends StatelessWidget {
  final int teamPoints;

  const TeamA({super.key, required this.teamPoints});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Team A',
          style: TextStyle(fontSize: 32),
        ),
        Text(
          '$teamPoints', // Display the passed points
          style: const TextStyle(fontSize: 120),
        ),
        CustomElevatedbutton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement("A", 1);
          },
          backgroundColor: secColor,
          text: "Add 1 Point",
        ),
        const SizedBox(height: 16),
        CustomElevatedbutton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement("A", 2);
          },
          backgroundColor: secColor,
          text: "Add 2 Points",
        ),
        const SizedBox(height: 16),
        CustomElevatedbutton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement("A", 3);
          },
          backgroundColor: secColor,
          text: "Add 3 Points",
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}