import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/core/services/data/services/remove_sharedprefs_usecase.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/services/domain/usecases/get_user_usecase.dart';
import 'package:camera/camera.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserUseCase getUserUseCase;
  final RemoveSharedPrefsUsecase removeSharedPrefsUsecase;
  final TabController _tabController = TabController(
    length: 2,
    vsync: _TickerProvider(),
  );

  TabController get tabController => _tabController;

  HomeBloc(
      {required this.getUserUseCase, required this.removeSharedPrefsUsecase})
      : super(HomeState()) {
    on<_Initialized>((event, emit) async {
      emit(state.copyWith(index: 0));
    });

    on<_IndexChanged>((event, emit) async {
      emit(state.copyWith(index: event.index));
    });

    on<_UserLoaded>((event, emit) async {
      emit(state.copyWith(user: event.user));
    });

    on<_ImageCaptured>((event, emit) async {
      emit(state.copyWith(image: event.image));
    });

    on<_LogoutPressed>((event, emit) async {
      await removeSharedPrefsUsecase.call();
      emit(state.copyWith(isLogoutPressed: true));
    });

    add(const _Initialized());
  }
}

class _TickerProvider extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
