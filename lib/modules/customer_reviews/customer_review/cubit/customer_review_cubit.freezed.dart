// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerReviewState {
  List<CustomerReview> get customerReviewList =>
      throw _privateConstructorUsedError;
  bool get buttonStatus => throw _privateConstructorUsedError;
  int get starRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerReviewStateCopyWith<CustomerReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerReviewStateCopyWith<$Res> {
  factory $CustomerReviewStateCopyWith(
          CustomerReviewState value, $Res Function(CustomerReviewState) then) =
      _$CustomerReviewStateCopyWithImpl<$Res, CustomerReviewState>;
  @useResult
  $Res call(
      {List<CustomerReview> customerReviewList,
      bool buttonStatus,
      int starRating});
}

/// @nodoc
class _$CustomerReviewStateCopyWithImpl<$Res, $Val extends CustomerReviewState>
    implements $CustomerReviewStateCopyWith<$Res> {
  _$CustomerReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerReviewList = null,
    Object? buttonStatus = null,
    Object? starRating = null,
  }) {
    return _then(_value.copyWith(
      customerReviewList: null == customerReviewList
          ? _value.customerReviewList
          : customerReviewList // ignore: cast_nullable_to_non_nullable
              as List<CustomerReview>,
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
abstract class _$$_CustomerReviewStateCopyWith<$Res>
    implements $CustomerReviewStateCopyWith<$Res> {
  factory _$$_CustomerReviewStateCopyWith(_$_CustomerReviewState value,
          $Res Function(_$_CustomerReviewState) then) =
      __$$_CustomerReviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerReview> customerReviewList,
      bool buttonStatus,
      int starRating});
}

/// @nodoc
class __$$_CustomerReviewStateCopyWithImpl<$Res>
    extends _$CustomerReviewStateCopyWithImpl<$Res, _$_CustomerReviewState>
    implements _$$_CustomerReviewStateCopyWith<$Res> {
  __$$_CustomerReviewStateCopyWithImpl(_$_CustomerReviewState _value,
      $Res Function(_$_CustomerReviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerReviewList = null,
    Object? buttonStatus = null,
    Object? starRating = null,
  }) {
    return _then(_$_CustomerReviewState(
      customerReviewList: null == customerReviewList
          ? _value._customerReviewList
          : customerReviewList // ignore: cast_nullable_to_non_nullable
              as List<CustomerReview>,
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

class _$_CustomerReviewState implements _CustomerReviewState {
  _$_CustomerReviewState(
      {final List<CustomerReview> customerReviewList = const [],
      this.buttonStatus = true,
      this.starRating = 0})
      : _customerReviewList = customerReviewList;

  final List<CustomerReview> _customerReviewList;
  @override
  @JsonKey()
  List<CustomerReview> get customerReviewList {
    if (_customerReviewList is EqualUnmodifiableListView)
      return _customerReviewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerReviewList);
  }

  @override
  @JsonKey()
  final bool buttonStatus;
  @override
  @JsonKey()
  final int starRating;

  @override
  String toString() {
    return 'CustomerReviewState(customerReviewList: $customerReviewList, buttonStatus: $buttonStatus, starRating: $starRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerReviewState &&
            const DeepCollectionEquality()
                .equals(other._customerReviewList, _customerReviewList) &&
            (identical(other.buttonStatus, buttonStatus) ||
                other.buttonStatus == buttonStatus) &&
            (identical(other.starRating, starRating) ||
                other.starRating == starRating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customerReviewList),
      buttonStatus,
      starRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerReviewStateCopyWith<_$_CustomerReviewState> get copyWith =>
      __$$_CustomerReviewStateCopyWithImpl<_$_CustomerReviewState>(
          this, _$identity);
}

abstract class _CustomerReviewState implements CustomerReviewState {
  factory _CustomerReviewState(
      {final List<CustomerReview> customerReviewList,
      final bool buttonStatus,
      final int starRating}) = _$_CustomerReviewState;

  @override
  List<CustomerReview> get customerReviewList;
  @override
  bool get buttonStatus;
  @override
  int get starRating;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerReviewStateCopyWith<_$_CustomerReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
