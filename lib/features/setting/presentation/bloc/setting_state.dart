part of 'setting_bloc.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState({
    int? theme,
    int? language,
    @Default(0) int initialization,
  }) = _SettingState;
}
