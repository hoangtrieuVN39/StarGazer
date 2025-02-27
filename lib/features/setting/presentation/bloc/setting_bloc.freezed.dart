// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) ThemeChanged,
    required TResult Function(int index) LanguageChanged,
    required TResult Function() Initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? ThemeChanged,
    TResult? Function(int index)? LanguageChanged,
    TResult? Function()? Initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? ThemeChanged,
    TResult Function(int index)? LanguageChanged,
    TResult Function()? Initialized,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) ThemeChanged,
    required TResult Function(_LanguageChanged value) LanguageChanged,
    required TResult Function(_Initialized value) Initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeChanged value)? ThemeChanged,
    TResult? Function(_LanguageChanged value)? LanguageChanged,
    TResult? Function(_Initialized value)? Initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? ThemeChanged,
    TResult Function(_LanguageChanged value)? LanguageChanged,
    TResult Function(_Initialized value)? Initialized,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
    SettingEvent value,
    $Res Function(SettingEvent) then,
  ) = _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ThemeChangedImplCopyWith<$Res> {
  factory _$$ThemeChangedImplCopyWith(
    _$ThemeChangedImpl value,
    $Res Function(_$ThemeChangedImpl) then,
  ) = __$$ThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ThemeChangedImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$ThemeChangedImpl>
    implements _$$ThemeChangedImplCopyWith<$Res> {
  __$$ThemeChangedImplCopyWithImpl(
    _$ThemeChangedImpl _value,
    $Res Function(_$ThemeChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$ThemeChangedImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$ThemeChangedImpl implements _ThemeChanged {
  const _$ThemeChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SettingEvent.ThemeChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      __$$ThemeChangedImplCopyWithImpl<_$ThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) ThemeChanged,
    required TResult Function(int index) LanguageChanged,
    required TResult Function() Initialized,
  }) {
    return ThemeChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? ThemeChanged,
    TResult? Function(int index)? LanguageChanged,
    TResult? Function()? Initialized,
  }) {
    return ThemeChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? ThemeChanged,
    TResult Function(int index)? LanguageChanged,
    TResult Function()? Initialized,
    required TResult orElse(),
  }) {
    if (ThemeChanged != null) {
      return ThemeChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) ThemeChanged,
    required TResult Function(_LanguageChanged value) LanguageChanged,
    required TResult Function(_Initialized value) Initialized,
  }) {
    return ThemeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeChanged value)? ThemeChanged,
    TResult? Function(_LanguageChanged value)? LanguageChanged,
    TResult? Function(_Initialized value)? Initialized,
  }) {
    return ThemeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? ThemeChanged,
    TResult Function(_LanguageChanged value)? LanguageChanged,
    TResult Function(_Initialized value)? Initialized,
    required TResult orElse(),
  }) {
    if (ThemeChanged != null) {
      return ThemeChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeChanged implements SettingEvent {
  const factory _ThemeChanged(final int index) = _$ThemeChangedImpl;

  int get index;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LanguageChangedImplCopyWith<$Res> {
  factory _$$LanguageChangedImplCopyWith(
    _$LanguageChangedImpl value,
    $Res Function(_$LanguageChangedImpl) then,
  ) = __$$LanguageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$LanguageChangedImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$LanguageChangedImpl>
    implements _$$LanguageChangedImplCopyWith<$Res> {
  __$$LanguageChangedImplCopyWithImpl(
    _$LanguageChangedImpl _value,
    $Res Function(_$LanguageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$LanguageChangedImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$LanguageChangedImpl implements _LanguageChanged {
  const _$LanguageChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SettingEvent.LanguageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      __$$LanguageChangedImplCopyWithImpl<_$LanguageChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) ThemeChanged,
    required TResult Function(int index) LanguageChanged,
    required TResult Function() Initialized,
  }) {
    return LanguageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? ThemeChanged,
    TResult? Function(int index)? LanguageChanged,
    TResult? Function()? Initialized,
  }) {
    return LanguageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? ThemeChanged,
    TResult Function(int index)? LanguageChanged,
    TResult Function()? Initialized,
    required TResult orElse(),
  }) {
    if (LanguageChanged != null) {
      return LanguageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) ThemeChanged,
    required TResult Function(_LanguageChanged value) LanguageChanged,
    required TResult Function(_Initialized value) Initialized,
  }) {
    return LanguageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeChanged value)? ThemeChanged,
    TResult? Function(_LanguageChanged value)? LanguageChanged,
    TResult? Function(_Initialized value)? Initialized,
  }) {
    return LanguageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? ThemeChanged,
    TResult Function(_LanguageChanged value)? LanguageChanged,
    TResult Function(_Initialized value)? Initialized,
    required TResult orElse(),
  }) {
    if (LanguageChanged != null) {
      return LanguageChanged(this);
    }
    return orElse();
  }
}

abstract class _LanguageChanged implements SettingEvent {
  const factory _LanguageChanged(final int index) = _$LanguageChangedImpl;

  int get index;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
    _$InitializedImpl value,
    $Res Function(_$InitializedImpl) then,
  ) = __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'SettingEvent.Initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) ThemeChanged,
    required TResult Function(int index) LanguageChanged,
    required TResult Function() Initialized,
  }) {
    return Initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? ThemeChanged,
    TResult? Function(int index)? LanguageChanged,
    TResult? Function()? Initialized,
  }) {
    return Initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? ThemeChanged,
    TResult Function(int index)? LanguageChanged,
    TResult Function()? Initialized,
    required TResult orElse(),
  }) {
    if (Initialized != null) {
      return Initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) ThemeChanged,
    required TResult Function(_LanguageChanged value) LanguageChanged,
    required TResult Function(_Initialized value) Initialized,
  }) {
    return Initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeChanged value)? ThemeChanged,
    TResult? Function(_LanguageChanged value)? LanguageChanged,
    TResult? Function(_Initialized value)? Initialized,
  }) {
    return Initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? ThemeChanged,
    TResult Function(_LanguageChanged value)? LanguageChanged,
    TResult Function(_Initialized value)? Initialized,
    required TResult orElse(),
  }) {
    if (Initialized != null) {
      return Initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SettingEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
mixin _$SettingState {
  int? get theme => throw _privateConstructorUsedError;
  int? get language => throw _privateConstructorUsedError;
  int get initialization => throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
    SettingState value,
    $Res Function(SettingState) then,
  ) = _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({int? theme, int? language, int initialization});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? language = freezed,
    Object? initialization = null,
  }) {
    return _then(
      _value.copyWith(
            theme:
                freezed == theme
                    ? _value.theme
                    : theme // ignore: cast_nullable_to_non_nullable
                        as int?,
            language:
                freezed == language
                    ? _value.language
                    : language // ignore: cast_nullable_to_non_nullable
                        as int?,
            initialization:
                null == initialization
                    ? _value.initialization
                    : initialization // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
    _$SettingStateImpl value,
    $Res Function(_$SettingStateImpl) then,
  ) = __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? theme, int? language, int initialization});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
    _$SettingStateImpl _value,
    $Res Function(_$SettingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? language = freezed,
    Object? initialization = null,
  }) {
    return _then(
      _$SettingStateImpl(
        theme:
            freezed == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                    as int?,
        language:
            freezed == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                    as int?,
        initialization:
            null == initialization
                ? _value.initialization
                : initialization // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl({
    this.theme,
    this.language,
    this.initialization = 0,
  });

  @override
  final int? theme;
  @override
  final int? language;
  @override
  @JsonKey()
  final int initialization;

  @override
  String toString() {
    return 'SettingState(theme: $theme, language: $language, initialization: $initialization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.initialization, initialization) ||
                other.initialization == initialization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, language, initialization);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({
    final int? theme,
    final int? language,
    final int initialization,
  }) = _$SettingStateImpl;

  @override
  int? get theme;
  @override
  int? get language;
  @override
  int get initialization;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
