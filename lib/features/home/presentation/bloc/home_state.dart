part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(1) int index,
    @Default(null) User? user,
    @Default(null) XFile? image,
    @Default(false) bool isLogoutPressed,
  }) = _HomeState;
}
