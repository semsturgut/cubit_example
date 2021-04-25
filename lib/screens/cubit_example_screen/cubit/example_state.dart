part of 'example_cubit.dart';

class ExampleState extends Equatable {
  final String text;

  const ExampleState(this.text);

  ExampleState copyWith({String? text}) {
    return ExampleState(text ?? this.text);
  }

  @override
  List<Object> get props => [text];
}
