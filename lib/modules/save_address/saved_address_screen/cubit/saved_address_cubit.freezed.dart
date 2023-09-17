// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavedAddressState {
  int get onButtonTap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedAddressStateCopyWith<SavedAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedAddressStateCopyWith<$Res> {
  factory $SavedAddressStateCopyWith(
          SavedAddressState value, $Res Function(SavedAddressState) then) =
      _$SavedAddressStateCopyWithImpl<$Res, SavedAddressState>;
  @useResult
  $Res call({int onButtonTap});
}

/// @nodoc
class _$SavedAddressStateCopyWithImpl<$Res, $Val extends SavedAddressState>
    implements $SavedAddressStateCopyWith<$Res> {
  _$SavedAddressStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SavedAddressStateCopyWith<$Res>
    implements $SavedAddressStateCopyWith<$Res> {
  factory _$$_SavedAddressStateCopyWith(_$_SavedAddressState value,
          $Res Function(_$_SavedAddressState) then) =
      __$$_SavedAddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int onButtonTap});
}

/// @nodoc
class __$$_SavedAddressStateCopyWithImpl<$Res>
    extends _$SavedAddressStateCopyWithImpl<$Res, _$_SavedAddressState>
    implements _$$_SavedAddressStateCopyWith<$Res> {
  __$$_SavedAddressStateCopyWithImpl(
      _$_SavedAddressState _value, $Res Function(_$_SavedAddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onButtonTap = null,
  }) {
    return _then(_$_SavedAddressState(
      onButtonTap: null == onButtonTap
          ? _value.onButtonTap
          : onButtonTap // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SavedAddressState implements _SavedAddressState {
  _$_SavedAddressState({this.onButtonTap = -1});

  @override
  @JsonKey()
  final int onButtonTap;

  @override
  String toString() {
    return 'SavedAddressState(onButtonTap: $onButtonTap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedAddressState &&
            (identical(other.onButtonTap, onButtonTap) ||
                other.onButtonTap == onButtonTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onButtonTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedAddressStateCopyWith<_$_SavedAddressState> get copyWith =>
      __$$_SavedAddressStateCopyWithImpl<_$_SavedAddressState>(
          this, _$identity);
}

abstract class _SavedAddressState implements SavedAddressState {
  factory _SavedAddressState({final int onButtonTap}) = _$_SavedAddressState;

  @override
  int get onButtonTap;
  @override
  @JsonKey(ignore: true)
  _$$_SavedAddressStateCopyWith<_$_SavedAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
