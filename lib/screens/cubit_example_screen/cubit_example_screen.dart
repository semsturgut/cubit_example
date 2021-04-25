import 'package:cubit_example/screens/cubit_example_screen/cubit/example_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitExampleScreen extends StatelessWidget {
  final ExampleCubit cubit = ExampleCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ExampleCubit, ExampleState>(
        bloc: cubit,
        buildWhen: (previous, current) => previous.text != current.text,
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (value) => cubit.changeText(value),
              ),
              Text(state.text)
            ],
          );
        },
      ),
    );
  }
}
