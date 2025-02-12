import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stargazer/core/services/domain/entities/user.dart';
import 'package:stargazer/core/providers.dart';
import 'package:stargazer/core/services/domain/usecases/get_user_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserUseCase getUserUseCase;
  HomeBloc({required this.getUserUseCase}) : super(HomeState()) {
    on<_Initialized>((event, emit) async {
      final user = await getUserUseCase.call();
      emit(state.copyWith(index: 0, user: user));
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
