// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordState {
  bool get buttonEnabled => throw _privateConstructorUsedError;
  bool get isPasswordMatch => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;
  bool get obscureText2 => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get confirmNewPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {bool buttonEnabled,
      bool isPasswordMatch,
      bool obscureText,
      bool obscureText2,
      String newPassword,
      String confirmNewPassword});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonEnabled = null,
    Object? isPasswordMatch = null,
    Object? obscureText = null,
    Object? obscureText2 = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
  }) {
    return _then(_value.copyWith(
      buttonEnabled: null == buttonEnabled
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordMatch: null == isPasswordMatch
          ? _value.isPasswordMatch
          : isPasswordMatch // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText2: null == obscureText2
          ? _value.obscureText2
          : obscureText2 // ignore: cast_nullable_to_non_nullable
              as bool,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool buttonEnabled,
      bool isPasswordMatch,
      bool obscureText,
      bool obscureText2,
      String newPassword,
      String confirmNewPassword});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$_ResetPasswordState>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonEnabled = null,
    Object? isPasswordMatch = null,
    Object? obscureText = null,
    Object? obscureText2 = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
  }) {
    return _then(_$_ResetPasswordState(
      buttonEnabled: null == buttonEnabled
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordMatch: null == isPasswordMatch
          ? _value.isPasswordMatch
          : isPasswordMatch // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText: null == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText2: null == obscureText2
          ? _value.obscureText2
          : obscureText2 // ignore: cast_nullable_to_non_nullable
              as bool,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  _$_ResetPasswordState(
      {this.buttonEnabled = false,
      this.isPasswordMatch = false,
      this.obscureText = true,
      this.obscureText2 = true,
      this.newPassword = "",
      this.confirmNewPassword = ""});

  @override
  @JsonKey()
  final bool buttonEnabled;
  @override
  @JsonKey()
  final bool isPasswordMatch;
  @override
  @JsonKey()
  final bool obscureText;
  @override
  @JsonKey()
  final bool obscureText2;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String confirmNewPassword;

  @override
  String toString() {
    return 'ResetPasswordState(buttonEnabled: $buttonEnabled, isPasswordMatch: $isPasswordMatch, obscureText: $obscureText, obscureText2: $obscureText2, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            (identical(other.buttonEnabled, buttonEnabled) ||
                other.buttonEnabled == buttonEnabled) &&
            (identical(other.isPasswordMatch, isPasswordMatch) ||
                other.isPasswordMatch == isPasswordMatch) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.obscureText2, obscureText2) ||
                other.obscureText2 == obscureText2) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                other.confirmNewPassword == confirmNewPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buttonEnabled, isPasswordMatch,
      obscureText, obscureText2, newPassword, confirmNewPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  factory _ResetPasswordState(
      {final bool buttonEnabled,
      final bool isPasswordMatch,
      final bool obscureText,
      final bool obscureText2,
      final String newPassword,
      final String confirmNewPassword}) = _$_ResetPasswordState;

  @override
  bool get buttonEnabled;
  @override
  bool get isPasswordMatch;
  @override
  bool get obscureText;
  @override
  bool get obscureText2;
  @override
  String get newPassword;
  @override
  String get confirmNewPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
