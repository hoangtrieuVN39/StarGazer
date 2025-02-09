import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required List<Widget> widgets, required int index})
    : super(HomeState(widgets: widgets, index: index)) {
    on<_Initialized>((event, emit) async {
      emit(state.copyWith(widgets: state.widgets, index: state.index));
    });
    on<_IndexChanged>((event, emit) async {
      emit(state.copyWith(index: event.index));
    });

    add(const _Initialized());
  }
}
