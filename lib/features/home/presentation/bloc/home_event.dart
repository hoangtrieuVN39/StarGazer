part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.indexChanged(int index) = _IndexChanged;
  const factory HomeEvent.initialized() = _Initialized;
  const factory HomeEvent.userLoaded(User user) = _UserLoaded;
  const factory HomeEvent.imageCaptured(XFile? image) = _ImageCaptured;
  const factory HomeEvent.logoutPressed() = _LogoutPressed;
}
