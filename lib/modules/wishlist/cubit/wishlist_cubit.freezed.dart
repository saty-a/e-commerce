// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistState {
  List<Product> get wishlistProductList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call({List<Product> wishlistProductList, bool loading});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlistProductList = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      wishlistProductList: null == wishlistProductList
          ? _value.wishlistProductList
          : wishlistProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WishlistStateCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$_WishlistStateCopyWith(
          _$_WishlistState value, $Res Function(_$_WishlistState) then) =
      __$$_WishlistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> wishlistProductList, bool loading});
}

/// @nodoc
class __$$_WishlistStateCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$_WishlistState>
    implements _$$_WishlistStateCopyWith<$Res> {
  __$$_WishlistStateCopyWithImpl(
      _$_WishlistState _value, $Res Function(_$_WishlistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlistProductList = null,
    Object? loading = null,
  }) {
    return _then(_$_WishlistState(
      wishlistProductList: null == wishlistProductList
          ? _value._wishlistProductList
          : wishlistProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WishlistState implements _WishlistState {
  const _$_WishlistState(
      {final List<Product> wishlistProductList = const [],
      this.loading = false})
      : _wishlistProductList = wishlistProductList;

  final List<Product> _wishlistProductList;
  @override
  @JsonKey()
  List<Product> get wishlistProductList {
    if (_wishlistProductList is EqualUnmodifiableListView)
      return _wishlistProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlistProductList);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'WishlistState(wishlistProductList: $wishlistProductList, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistState &&
            const DeepCollectionEquality()
                .equals(other._wishlistProductList, _wishlistProductList) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_wishlistProductList), loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistStateCopyWith<_$_WishlistState> get copyWith =>
      __$$_WishlistStateCopyWithImpl<_$_WishlistState>(this, _$identity);
}

abstract class _WishlistState implements WishlistState {
  const factory _WishlistState(
      {final List<Product> wishlistProductList,
      final bool loading}) = _$_WishlistState;

  @override
  List<Product> get wishlistProductList;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistStateCopyWith<_$_WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}
