part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.indexChanged(int index) = _IndexChanged;
  const factory HomeEvent.initialized() = _Initialized;
}
