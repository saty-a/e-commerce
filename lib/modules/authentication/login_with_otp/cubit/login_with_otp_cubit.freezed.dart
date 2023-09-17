// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_with_otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginWithOtpState {
  bool get tcCheck => throw _privateConstructorUsedError;
  bool get buttonEnable => throw _privateConstructorUsedError;
  String get onFlagSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginWithOtpStateCopyWith<LoginWithOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginWithOtpStateCopyWith<$Res> {
  factory $LoginWithOtpStateCopyWith(
          LoginWithOtpState value, $Res Function(LoginWithOtpState) then) =
      _$LoginWithOtpStateCopyWithImpl<$Res, LoginWithOtpState>;
  @useResult
  $Res call({bool tcCheck, bool buttonEnable, String onFlagSelected});
}

/// @nodoc
class _$LoginWithOtpStateCopyWithImpl<$Res, $Val extends LoginWithOtpState>
    implements $LoginWithOtpStateCopyWith<$Res> {
  _$LoginWithOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tcCheck = null,
    Object? buttonEnable = null,
    Object? onFlagSelected = null,
  }) {
    return _then(_value.copyWith(
      tcCheck: null == tcCheck
          ? _value.tcCheck
          : tcCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonEnable: null == buttonEnable
          ? _value.buttonEnable
          : buttonEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      onFlagSelected: null == onFlagSelected
          ? _value.onFlagSelected
          : onFlagSelected // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginWithOtpStateCopyWith<$Res>
    implements $LoginWithOtpStateCopyWith<$Res> {
  factory _$$_LoginWithOtpStateCopyWith(_$_LoginWithOtpState value,
          $Res Function(_$_LoginWithOtpState) then) =
      __$$_LoginWithOtpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool tcCheck, bool buttonEnable, String onFlagSelected});
}

/// @nodoc
class __$$_LoginWithOtpStateCopyWithImpl<$Res>
    extends _$LoginWithOtpStateCopyWithImpl<$Res, _$_LoginWithOtpState>
    implements _$$_LoginWithOtpStateCopyWith<$Res> {
  __$$_LoginWithOtpStateCopyWithImpl(
      _$_LoginWithOtpState _value, $Res Function(_$_LoginWithOtpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tcCheck = null,
    Object? buttonEnable = null,
    Object? onFlagSelected = null,
  }) {
    return _then(_$_LoginWithOtpState(
      tcCheck: null == tcCheck
          ? _value.tcCheck
          : tcCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonEnable: null == buttonEnable
          ? _value.buttonEnable
          : buttonEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      onFlagSelected: null == onFlagSelected
          ? _value.onFlagSelected
          : onFlagSelected // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginWithOtpState implements _LoginWithOtpState {
  _$_LoginWithOtpState(
      {this.tcCheck = false,
      this.buttonEnable = false,
      this.onFlagSelected = AppStrings.flagEmoji});

  @override
  @JsonKey()
  final bool tcCheck;
  @override
  @JsonKey()
  final bool buttonEnable;
  @override
  @JsonKey()
  final String onFlagSelected;

  @override
  String toString() {
    return 'LoginWithOtpState(tcCheck: $tcCheck, buttonEnable: $buttonEnable, onFlagSelected: $onFlagSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginWithOtpState &&
            (identical(other.tcCheck, tcCheck) || other.tcCheck == tcCheck) &&
            (identical(other.buttonEnable, buttonEnable) ||
                other.buttonEnable == buttonEnable) &&
            (identical(other.onFlagSelected, onFlagSelected) ||
                other.onFlagSelected == onFlagSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tcCheck, buttonEnable, onFlagSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginWithOtpStateCopyWith<_$_LoginWithOtpState> get copyWith =>
      __$$_LoginWithOtpStateCopyWithImpl<_$_LoginWithOtpState>(
          this, _$identity);
}

abstract class _LoginWithOtpState implements LoginWithOtpState {
  factory _LoginWithOtpState(
      {final bool tcCheck,
      final bool buttonEnable,
      final String onFlagSelected}) = _$_LoginWithOtpState;

  @override
  bool get tcCheck;
  @override
  bool get buttonEnable;
  @override
  String get onFlagSelected;
  @override
  @JsonKey(ignore: true)
  _$$_LoginWithOtpStateCopyWith<_$_LoginWithOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
