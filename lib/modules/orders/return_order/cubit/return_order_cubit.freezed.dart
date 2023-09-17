// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReturnOrderState {
  int get groupValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReturnOrderStateCopyWith<ReturnOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnOrderStateCopyWith<$Res> {
  factory $ReturnOrderStateCopyWith(
          ReturnOrderState value, $Res Function(ReturnOrderState) then) =
      _$ReturnOrderStateCopyWithImpl<$Res, ReturnOrderState>;
  @useResult
  $Res call({int groupValue});
}

/// @nodoc
class _$ReturnOrderStateCopyWithImpl<$Res, $Val extends ReturnOrderState>
    implements $ReturnOrderStateCopyWith<$Res> {
  _$ReturnOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupValue = null,
  }) {
    return _then(_value.copyWith(
      groupValue: null == groupValue
          ? _value.groupValue
          : groupValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReturnOrderStateCopyWith<$Res>
    implements $ReturnOrderStateCopyWith<$Res> {
  factory _$$_ReturnOrderStateCopyWith(
          _$_ReturnOrderState value, $Res Function(_$_ReturnOrderState) then) =
      __$$_ReturnOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int groupValue});
}

/// @nodoc
class __$$_ReturnOrderStateCopyWithImpl<$Res>
    extends _$ReturnOrderStateCopyWithImpl<$Res, _$_ReturnOrderState>
    implements _$$_ReturnOrderStateCopyWith<$Res> {
  __$$_ReturnOrderStateCopyWithImpl(
      _$_ReturnOrderState _value, $Res Function(_$_ReturnOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupValue = null,
  }) {
    return _then(_$_ReturnOrderState(
      groupValue: null == groupValue
          ? _value.groupValue
          : groupValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReturnOrderState implements _ReturnOrderState {
  _$_ReturnOrderState({this.groupValue = -1});

  @override
  @JsonKey()
  final int groupValue;

  @override
  String toString() {
    return 'ReturnOrderState(groupValue: $groupValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReturnOrderState &&
            (identical(other.groupValue, groupValue) ||
                other.groupValue == groupValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnOrderStateCopyWith<_$_ReturnOrderState> get copyWith =>
      __$$_ReturnOrderStateCopyWithImpl<_$_ReturnOrderState>(this, _$identity);
}

abstract class _ReturnOrderState implements ReturnOrderState {
  factory _ReturnOrderState({final int groupValue}) = _$_ReturnOrderState;

  @override
  int get groupValue;
  @override
  @JsonKey(ignore: true)
  _$$_ReturnOrderStateCopyWith<_$_ReturnOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
