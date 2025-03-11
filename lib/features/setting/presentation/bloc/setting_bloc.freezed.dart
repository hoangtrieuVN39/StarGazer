// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SettingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingEvent()';
  }
}

/// @nodoc
class $SettingEventCopyWith<$Res> {
  $SettingEventCopyWith(SettingEvent _, $Res Function(SettingEvent) __);
}

/// @nodoc

class _ThemeChanged implements SettingEvent {
  const _ThemeChanged(this.index);

  final int index;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThemeChangedCopyWith<_ThemeChanged> get copyWith =>
      __$ThemeChangedCopyWithImpl<_ThemeChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'SettingEvent.ThemeChanged(index: $index)';
  }
}

/// @nodoc
abstract mixin class _$ThemeChangedCopyWith<$Res>
    implements $SettingEventCopyWith<$Res> {
  factory _$ThemeChangedCopyWith(
          _ThemeChanged value, $Res Function(_ThemeChanged) _then) =
      __$ThemeChangedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$ThemeChangedCopyWithImpl<$Res>
    implements _$ThemeChangedCopyWith<$Res> {
  __$ThemeChangedCopyWithImpl(this._self, this._then);

  final _ThemeChanged _self;
  final $Res Function(_ThemeChanged) _then;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(_ThemeChanged(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _LanguageChanged implements SettingEvent {
  const _LanguageChanged(this.index);

  final int index;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LanguageChangedCopyWith<_LanguageChanged> get copyWith =>
      __$LanguageChangedCopyWithImpl<_LanguageChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'SettingEvent.LanguageChanged(index: $index)';
  }
}

/// @nodoc
abstract mixin class _$LanguageChangedCopyWith<$Res>
    implements $SettingEventCopyWith<$Res> {
  factory _$LanguageChangedCopyWith(
          _LanguageChanged value, $Res Function(_LanguageChanged) _then) =
      __$LanguageChangedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$LanguageChangedCopyWithImpl<$Res>
    implements _$LanguageChangedCopyWith<$Res> {
  __$LanguageChangedCopyWithImpl(this._self, this._then);

  final _LanguageChanged _self;
  final $Res Function(_LanguageChanged) _then;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(_LanguageChanged(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Initialized implements SettingEvent {
  const _Initialized();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SettingEvent.Initialized()';
  }
}

/// @nodoc
mixin _$SettingState {
  int? get theme;
  int? get language;
  int get initialization;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SettingStateCopyWith<SettingState> get copyWith =>
      _$SettingStateCopyWithImpl<SettingState>(
          this as SettingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SettingState &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.initialization, initialization) ||
                other.initialization == initialization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, language, initialization);

  @override
  String toString() {
    return 'SettingState(theme: $theme, language: $language, initialization: $initialization)';
  }
}

/// @nodoc
abstract mixin class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) _then) =
      _$SettingStateCopyWithImpl;
  @useResult
  $Res call({int? theme, int? language, int initialization});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._self, this._then);

  final SettingState _self;
  final $Res Function(SettingState) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? language = freezed,
    Object? initialization = null,
  }) {
    return _then(_self.copyWith(
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as int?,
      initialization: null == initialization
          ? _self.initialization
          : initialization // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _SettingState implements SettingState {
  const _SettingState({this.theme, this.language, this.initialization = 0});

  @override
  final int? theme;
  @override
  final int? language;
  @override
  @JsonKey()
  final int initialization;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingState &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.initialization, initialization) ||
                other.initialization == initialization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, language, initialization);

  @override
  String toString() {
    return 'SettingState(theme: $theme, language: $language, initialization: $initialization)';
  }
}

/// @nodoc
abstract mixin class _$SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(
          _SettingState value, $Res Function(_SettingState) _then) =
      __$SettingStateCopyWithImpl;
  @override
  @useResult
  $Res call({int? theme, int? language, int initialization});
}

/// @nodoc
class __$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(this._self, this._then);

  final _SettingState _self;
  final $Res Function(_SettingState) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? theme = freezed,
    Object? language = freezed,
    Object? initialization = null,
  }) {
    return _then(_SettingState(
      theme: freezed == theme
          ? _self.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as int?,
      initialization: null == initialization
          ? _self.initialization
          : initialization // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
