// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IndexChangedImplCopyWith<$Res> {
  factory _$$IndexChangedImplCopyWith(
    _$IndexChangedImpl value,
    $Res Function(_$IndexChangedImpl) then,
  ) = __$$IndexChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$IndexChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$IndexChangedImpl>
    implements _$$IndexChangedImplCopyWith<$Res> {
  __$$IndexChangedImplCopyWithImpl(
    _$IndexChangedImpl _value,
    $Res Function(_$IndexChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$IndexChangedImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$IndexChangedImpl implements _IndexChanged {
  const _$IndexChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.indexChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexChangedImplCopyWith<_$IndexChangedImpl> get copyWith =>
      __$$IndexChangedImplCopyWithImpl<_$IndexChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
  }) {
    return indexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
  }) {
    return indexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
  }) {
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return indexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(this);
    }
    return orElse();
  }
}

abstract class _IndexChanged implements HomeEvent {
  const factory _IndexChanged(final int index) = _$IndexChangedImpl;

  int get index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexChangedImplCopyWith<_$IndexChangedImpl> get copyWith =>
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
    extends _$HomeEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'HomeEvent.initialized()';
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
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements HomeEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
mixin _$HomeState {
  int get index => throw _privateConstructorUsedError;
  List<Widget> get widgets => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({int index, List<Widget> widgets});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? widgets = null}) {
    return _then(
      _value.copyWith(
            index:
                null == index
                    ? _value.index
                    : index // ignore: cast_nullable_to_non_nullable
                        as int,
            widgets:
                null == widgets
                    ? _value.widgets
                    : widgets // ignore: cast_nullable_to_non_nullable
                        as List<Widget>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<Widget> widgets});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? widgets = null}) {
    return _then(
      _$HomeStateImpl(
        index:
            null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                    as int,
        widgets:
            null == widgets
                ? _value._widgets
                : widgets // ignore: cast_nullable_to_non_nullable
                    as List<Widget>,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({this.index = 1, final List<Widget> widgets = const []})
    : _widgets = widgets;

  @override
  @JsonKey()
  final int index;
  final List<Widget> _widgets;
  @override
  @JsonKey()
  List<Widget> get widgets {
    if (_widgets is EqualUnmodifiableListView) return _widgets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgets);
  }

  @override
  String toString() {
    return 'HomeState(index: $index, widgets: $widgets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._widgets, _widgets));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    index,
    const DeepCollectionEquality().hash(_widgets),
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({final int index, final List<Widget> widgets}) =
      _$HomeStateImpl;

  @override
  int get index;
  @override
  List<Widget> get widgets;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
