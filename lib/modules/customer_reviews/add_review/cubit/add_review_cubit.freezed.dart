// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddReviewState {
  List<XFile> get wishlistProductList => throw _privateConstructorUsedError;
  bool get buttonStatus => throw _privateConstructorUsedError;
  int get starRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddReviewStateCopyWith<AddReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewStateCopyWith<$Res> {
  factory $AddReviewStateCopyWith(
          AddReviewState value, $Res Function(AddReviewState) then) =
      _$AddReviewStateCopyWithImpl<$Res, AddReviewState>;
  @useResult
  $Res call(
      {List<XFile> wishlistProductList, bool buttonStatus, int starRating});
}

/// @nodoc
class _$AddReviewStateCopyWithImpl<$Res, $Val extends AddReviewState>
    implements $AddReviewStateCopyWith<$Res> {
  _$AddReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlistProductList = null,
    Object? buttonStatus = null,
    Object? starRating = null,
  }) {
    return _then(_value.copyWith(
      wishlistProductList: null == wishlistProductList
          ? _value.wishlistProductList
          : wishlistProductList // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      buttonStatus: null == buttonStatus
          ? _value.buttonStatus
          : buttonStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      starRating: null == starRating
          ? _value.starRating
          : starRating // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddReviewStateCopyWith<$Res>
    implements $AddReviewStateCopyWith<$Res> {
  factory _$$_AddReviewStateCopyWith(
          _$_AddReviewState value, $Res Function(_$_AddReviewState) then) =
      __$$_AddReviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<XFile> wishlistProductList, bool buttonStatus, int starRating});
}

/// @nodoc
class __$$_AddReviewStateCopyWithImpl<$Res>
    extends _$AddReviewStateCopyWithImpl<$Res, _$_AddReviewState>
    implements _$$_AddReviewStateCopyWith<$Res> {
  __$$_AddReviewStateCopyWithImpl(
      _$_AddReviewState _value, $Res Function(_$_AddReviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlistProductList = null,
    Object? buttonStatus = null,
    Object? starRating = null,
  }) {
    return _then(_$_AddReviewState(
      wishlistProductList: null == wishlistProductList
          ? _value._wishlistProductList
          : wishlistProductList // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      buttonStatus: null == buttonStatus
          ? _value.buttonStatus
          : buttonStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      starRating: null == starRating
          ? _value.starRating
          : starRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddReviewState implements _AddReviewState {
  const _$_AddReviewState(
      {final List<XFile> wishlistProductList = const [],
      this.buttonStatus = true,
      this.starRating = 0})
      : _wishlistProductList = wishlistProductList;

  final List<XFile> _wishlistProductList;
  @override
  @JsonKey()
  List<XFile> get wishlistProductList {
    if (_wishlistProductList is EqualUnmodifiableListView)
      return _wishlistProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlistProductList);
  }

  @override
  @JsonKey()
  final bool buttonStatus;
  @override
  @JsonKey()
  final int starRating;

  @override
  String toString() {
    return 'AddReviewState(wishlistProductList: $wishlistProductList, buttonStatus: $buttonStatus, starRating: $starRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddReviewState &&
            const DeepCollectionEquality()
                .equals(other._wishlistProductList, _wishlistProductList) &&
            (identical(other.buttonStatus, buttonStatus) ||
                other.buttonStatus == buttonStatus) &&
            (identical(other.starRating, starRating) ||
                other.starRating == starRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wishlistProductList),
      buttonStatus,
      starRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddReviewStateCopyWith<_$_AddReviewState> get copyWith =>
      __$$_AddReviewStateCopyWithImpl<_$_AddReviewState>(this, _$identity);
}

abstract class _AddReviewState implements AddReviewState {
  const factory _AddReviewState(
      {final List<XFile> wishlistProductList,
      final bool buttonStatus,
      final int starRating}) = _$_AddReviewState;

  @override
  List<XFile> get wishlistProductList;
  @override
  bool get buttonStatus;
  @override
  int get starRating;
  @override
  @JsonKey(ignore: true)
  _$$_AddReviewStateCopyWith<_$_AddReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
