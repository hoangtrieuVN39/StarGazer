part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    int? theme,
    int? language,
  }) = _SettingState;
}