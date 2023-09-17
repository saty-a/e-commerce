// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enter_otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnterOtpState {
  bool get buttonEnable => throw _privateConstructorUsedError;
  bool get resendOtp => throw _privateConstructorUsedError;
  bool get shouldShowTimer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterOtpStateCopyWith<EnterOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterOtpStateCopyWith<$Res> {
  factory $EnterOtpStateCopyWith(
          EnterOtpState value, $Res Function(EnterOtpState) then) =
      _$EnterOtpStateCopyWithImpl<$Res, EnterOtpState>;
  @useResult
  $Res call({bool buttonEnable, bool resendOtp, bool shouldShowTimer});
}

/// @nodoc
class _$EnterOtpStateCopyWithImpl<$Res, $Val extends EnterOtpState>
    implements $EnterOtpStateCopyWith<$Res> {
  _$EnterOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonEnable = null,
    Object? resendOtp = null,
    Object? shouldShowTimer = null,
  }) {
    return _then(_value.copyWith(
      buttonEnable: null == buttonEnable
          ? _value.buttonEnable
          : buttonEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      resendOtp: null == resendOtp
          ? _value.resendOtp
          : resendOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowTimer: null == shouldShowTimer
          ? _value.shouldShowTimer
          : shouldShowTimer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnterOtpStateCopyWith<$Res>
    implements $EnterOtpStateCopyWith<$Res> {
  factory _$$_EnterOtpStateCopyWith(
          _$_EnterOtpState value, $Res Function(_$_EnterOtpState) then) =
      __$$_EnterOtpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool buttonEnable, bool resendOtp, bool shouldShowTimer});
}

/// @nodoc
class __$$_EnterOtpStateCopyWithImpl<$Res>
    extends _$EnterOtpStateCopyWithImpl<$Res, _$_EnterOtpState>
    implements _$$_EnterOtpStateCopyWith<$Res> {
  __$$_EnterOtpStateCopyWithImpl(
      _$_EnterOtpState _value, $Res Function(_$_EnterOtpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonEnable = null,
    Object? resendOtp = null,
    Object? shouldShowTimer = null,
  }) {
    return _then(_$_EnterOtpState(
      buttonEnable: null == buttonEnable
          ? _value.buttonEnable
          : buttonEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      resendOtp: null == resendOtp
          ? _value.resendOtp
          : resendOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowTimer: null == shouldShowTimer
          ? _value.shouldShowTimer
          : shouldShowTimer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnterOtpState implements _EnterOtpState {
  _$_EnterOtpState(
      {this.buttonEnable = false,
      this.resendOtp = false,
      this.shouldShowTimer = true});

  @override
  @JsonKey()
  final bool buttonEnable;
  @override
  @JsonKey()
  final bool resendOtp;
  @override
  @JsonKey()
  final bool shouldShowTimer;

  @override
  String toString() {
    return 'EnterOtpState(buttonEnable: $buttonEnable, resendOtp: $resendOtp, shouldShowTimer: $shouldShowTimer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnterOtpState &&
            (identical(other.buttonEnable, buttonEnable) ||
                other.buttonEnable == buttonEnable) &&
            (identical(other.resendOtp, resendOtp) ||
                other.resendOtp == resendOtp) &&
            (identical(other.shouldShowTimer, shouldShowTimer) ||
                other.shouldShowTimer == shouldShowTimer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, buttonEnable, resendOtp, shouldShowTimer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnterOtpStateCopyWith<_$_EnterOtpState> get copyWith =>
      __$$_EnterOtpStateCopyWithImpl<_$_EnterOtpState>(this, _$identity);
}

abstract class _EnterOtpState implements EnterOtpState {
  factory _EnterOtpState(
      {final bool buttonEnable,
      final bool resendOtp,
      final bool shouldShowTimer}) = _$_EnterOtpState;

  @override
  bool get buttonEnable;
  @override
  bool get resendOtp;
  @override
  bool get shouldShowTimer;
  @override
  @JsonKey(ignore: true)
  _$$_EnterOtpStateCopyWith<_$_EnterOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
