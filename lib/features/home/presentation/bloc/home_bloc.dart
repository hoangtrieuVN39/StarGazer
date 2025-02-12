import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<_Initialized>((event, emit) async {
      emit(state.copyWith(index: 0));
    });

    on<_IndexChanged>((event, emit) async {
      emit(state.copyWith(index: event.index));
    });

    on<_UserLoaded>((event, emit) async {
      emit(state.copyWith(user: event.user));
    });

    add(const _Initialized());
  }
}

