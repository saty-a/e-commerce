// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_deatils_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDeatilsState {
  bool get isLoadMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDeatilsStateCopyWith<ProductDeatilsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDeatilsStateCopyWith<$Res> {
  factory $ProductDeatilsStateCopyWith(
          ProductDeatilsState value, $Res Function(ProductDeatilsState) then) =
      _$ProductDeatilsStateCopyWithImpl<$Res, ProductDeatilsState>;
  @useResult
  $Res call({bool isLoadMore});
}

/// @nodoc
class _$ProductDeatilsStateCopyWithImpl<$Res, $Val extends ProductDeatilsState>
    implements $ProductDeatilsStateCopyWith<$Res> {
  _$ProductDeatilsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
  }) {
    return _then(_value.copyWith(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDeatilsStateCopyWith<$Res>
    implements $ProductDeatilsStateCopyWith<$Res> {
  factory _$$_ProductDeatilsStateCopyWith(_$_ProductDeatilsState value,
          $Res Function(_$_ProductDeatilsState) then) =
      __$$_ProductDeatilsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoadMore});
}

/// @nodoc
class __$$_ProductDeatilsStateCopyWithImpl<$Res>
    extends _$ProductDeatilsStateCopyWithImpl<$Res, _$_ProductDeatilsState>
    implements _$$_ProductDeatilsStateCopyWith<$Res> {
  __$$_ProductDeatilsStateCopyWithImpl(_$_ProductDeatilsState _value,
      $Res Function(_$_ProductDeatilsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
  }) {
    return _then(_$_ProductDeatilsState(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductDeatilsState implements _ProductDeatilsState {
  _$_ProductDeatilsState({this.isLoadMore = false});

  @override
  @JsonKey()
  final bool isLoadMore;

  @override
  String toString() {
    return 'ProductDeatilsState(isLoadMore: $isLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDeatilsState &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDeatilsStateCopyWith<_$_ProductDeatilsState> get copyWith =>
      __$$_ProductDeatilsStateCopyWithImpl<_$_ProductDeatilsState>(
          this, _$identity);
}

abstract class _ProductDeatilsState implements ProductDeatilsState {
  factory _ProductDeatilsState({final bool isLoadMore}) =
      _$_ProductDeatilsState;

  @override
  bool get isLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDeatilsStateCopyWith<_$_ProductDeatilsState> get copyWith =>
      throw _privateConstructorUsedError;
}
