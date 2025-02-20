part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.ThemeChanged(int index) = _ThemeChanged;
  const factory SettingEvent.LanguageChanged(int index) = _LanguageChanged;
  const factory SettingEvent.Initialized() = _Initialized;
}