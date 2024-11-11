import 'package:basketball_counter_app/const.dart';
import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/widgets/custom_elevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamB extends StatelessWidget {
  final int teamPoints;

  const TeamB({super.key, required this.teamPoints});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Team B',
          style: TextStyle(fontSize: 32),
        ),
        Text(
          '$teamPoints', // Display the passed points
          style: const TextStyle(fontSize: 120),
        ),
        CustomElevatedbutton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement("B", 1);
          },
          backgroundColor: primaryColor,
          text: "Add 1 Point",
        ),
        const SizedBox(height: 16),
        CustomElevatedbutton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement("B", 2);
          },
          backgroundColor: primaryColor,
          text: "Add 2 Points",
        ),
        const SizedBox(height: 16),
        CustomElevatedbutton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement("B", 3);
          },
          backgroundColor: primaryColor,
          text: "Add 3 Points",
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
