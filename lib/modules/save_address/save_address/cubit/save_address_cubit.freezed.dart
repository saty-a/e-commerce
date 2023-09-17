// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveAddressState {
  int get onButtonTap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveAddressStateCopyWith<SaveAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAddressStateCopyWith<$Res> {
  factory $SaveAddressStateCopyWith(
          SaveAddressState value, $Res Function(SaveAddressState) then) =
      _$SaveAddressStateCopyWithImpl<$Res, SaveAddressState>;
  @useResult
  $Res call({int onButtonTap});
}

/// @nodoc
class _$SaveAddressStateCopyWithImpl<$Res, $Val extends SaveAddressState>
    implements $SaveAddressStateCopyWith<$Res> {
  _$SaveAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onButtonTap = null,
  }) {
    return _then(_value.copyWith(
      onButtonTap: null == onButtonTap
          ? _value.onButtonTap
          : onButtonTap // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaveAddressStateCopyWith<$Res>
    implements $SaveAddressStateCopyWith<$Res> {
  factory _$$_SaveAddressStateCopyWith(
          _$_SaveAddressState value, $Res Function(_$_SaveAddressState) then) =
      __$$_SaveAddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int onButtonTap});
}

/// @nodoc
class __$$_SaveAddressStateCopyWithImpl<$Res>
    extends _$SaveAddressStateCopyWithImpl<$Res, _$_SaveAddressState>
    implements _$$_SaveAddressStateCopyWith<$Res> {
  __$$_SaveAddressStateCopyWithImpl(
      _$_SaveAddressState _value, $Res Function(_$_SaveAddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onButtonTap = null,
  }) {
    return _then(_$_SaveAddressState(
      onButtonTap: null == onButtonTap
          ? _value.onButtonTap
          : onButtonTap // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SaveAddressState implements _SaveAddressState {
  _$_SaveAddressState({this.onButtonTap = 0});

  @override
  @JsonKey()
  final int onButtonTap;

  @override
  String toString() {
    return 'SaveAddressState(onButtonTap: $onButtonTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveAddressState &&
            (identical(other.onButtonTap, onButtonTap) ||
                other.onButtonTap == onButtonTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onButtonTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveAddressStateCopyWith<_$_SaveAddressState> get copyWith =>
      __$$_SaveAddressStateCopyWithImpl<_$_SaveAddressState>(this, _$identity);
}

abstract class _SaveAddressState implements SaveAddressState {
  factory _SaveAddressState({final int onButtonTap}) = _$_SaveAddressState;

  @override
  int get onButtonTap;
  @override
  @JsonKey(ignore: true)
  _$$_SaveAddressStateCopyWith<_$_SaveAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
