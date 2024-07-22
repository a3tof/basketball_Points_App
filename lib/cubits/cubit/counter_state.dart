part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterAState extends CounterState {}

final class CounterBState extends CounterState {}
