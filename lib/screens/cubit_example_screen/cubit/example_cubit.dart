import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'example_state.dart';

class ExampleCubit extends Cubit<ExampleState> {
  ExampleCubit() : super(ExampleState(""));

  changeText(String value) {
    emit(state.copyWith(text: value));
  }
}
