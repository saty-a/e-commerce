// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeSearchState {
  bool get showEmptyState => throw _privateConstructorUsedError;
  bool get showClearIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeSearchStateCopyWith<HomeSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSearchStateCopyWith<$Res> {
  factory $HomeSearchStateCopyWith(
          HomeSearchState value, $Res Function(HomeSearchState) then) =
      _$HomeSearchStateCopyWithImpl<$Res, HomeSearchState>;
  @useResult
  $Res call({bool showEmptyState, bool showClearIcon});
}

/// @nodoc
class _$HomeSearchStateCopyWithImpl<$Res, $Val extends HomeSearchState>
    implements $HomeSearchStateCopyWith<$Res> {
  _$HomeSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showEmptyState = null,
    Object? showClearIcon = null,
  }) {
    return _then(_value.copyWith(
      showEmptyState: null == showEmptyState
          ? _value.showEmptyState
          : showEmptyState // ignore: cast_nullable_to_non_nullable
              as bool,
      showClearIcon: null == showClearIcon
          ? _value.showClearIcon
          : showClearIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeSearchStateCopyWith<$Res>
    implements $HomeSearchStateCopyWith<$Res> {
  factory _$$_HomeSearchStateCopyWith(
          _$_HomeSearchState value, $Res Function(_$_HomeSearchState) then) =
      __$$_HomeSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showEmptyState, bool showClearIcon});
}

/// @nodoc
class __$$_HomeSearchStateCopyWithImpl<$Res>
    extends _$HomeSearchStateCopyWithImpl<$Res, _$_HomeSearchState>
    implements _$$_HomeSearchStateCopyWith<$Res> {
  __$$_HomeSearchStateCopyWithImpl(
      _$_HomeSearchState _value, $Res Function(_$_HomeSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showEmptyState = null,
    Object? showClearIcon = null,
  }) {
    return _then(_$_HomeSearchState(
      showEmptyState: null == showEmptyState
          ? _value.showEmptyState
          : showEmptyState // ignore: cast_nullable_to_non_nullable
              as bool,
      showClearIcon: null == showClearIcon
          ? _value.showClearIcon
          : showClearIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeSearchState implements _HomeSearchState {
  _$_HomeSearchState({this.showEmptyState = false, this.showClearIcon = false});

  @override
  @JsonKey()
  final bool showEmptyState;
  @override
  @JsonKey()
  final bool showClearIcon;

  @override
  String toString() {
    return 'HomeSearchState(showEmptyState: $showEmptyState, showClearIcon: $showClearIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeSearchState &&
            (identical(other.showEmptyState, showEmptyState) ||
                other.showEmptyState == showEmptyState) &&
            (identical(other.showClearIcon, showClearIcon) ||
                other.showClearIcon == showClearIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showEmptyState, showClearIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeSearchStateCopyWith<_$_HomeSearchState> get copyWith =>
      __$$_HomeSearchStateCopyWithImpl<_$_HomeSearchState>(this, _$identity);
}

abstract class _HomeSearchState implements HomeSearchState {
  factory _HomeSearchState(
      {final bool showEmptyState,
      final bool showClearIcon}) = _$_HomeSearchState;

  @override
  bool get showEmptyState;
  @override
  bool get showClearIcon;
  @override
  @JsonKey(ignore: true)
  _$$_HomeSearchStateCopyWith<_$_HomeSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
