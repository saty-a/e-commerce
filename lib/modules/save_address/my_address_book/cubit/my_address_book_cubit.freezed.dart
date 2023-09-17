// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_address_book_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyAddressBookState {
  List<Address> get addressList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyAddressBookStateCopyWith<MyAddressBookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAddressBookStateCopyWith<$Res> {
  factory $MyAddressBookStateCopyWith(
          MyAddressBookState value, $Res Function(MyAddressBookState) then) =
      _$MyAddressBookStateCopyWithImpl<$Res, MyAddressBookState>;
  @useResult
  $Res call({List<Address> addressList});
}

/// @nodoc
class _$MyAddressBookStateCopyWithImpl<$Res, $Val extends MyAddressBookState>
    implements $MyAddressBookStateCopyWith<$Res> {
  _$MyAddressBookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
  }) {
    return _then(_value.copyWith(
      addressList: null == addressList
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyAddressBookStateCopyWith<$Res>
    implements $MyAddressBookStateCopyWith<$Res> {
  factory _$$_MyAddressBookStateCopyWith(_$_MyAddressBookState value,
          $Res Function(_$_MyAddressBookState) then) =
      __$$_MyAddressBookStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Address> addressList});
}

/// @nodoc
class __$$_MyAddressBookStateCopyWithImpl<$Res>
    extends _$MyAddressBookStateCopyWithImpl<$Res, _$_MyAddressBookState>
    implements _$$_MyAddressBookStateCopyWith<$Res> {
  __$$_MyAddressBookStateCopyWithImpl(
      _$_MyAddressBookState _value, $Res Function(_$_MyAddressBookState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
  }) {
    return _then(_$_MyAddressBookState(
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc

class _$_MyAddressBookState implements _MyAddressBookState {
  _$_MyAddressBookState({final List<Address> addressList = const []})
      : _addressList = addressList;

  final List<Address> _addressList;
  @override
  @JsonKey()
  List<Address> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  String toString() {
    return 'MyAddressBookState(addressList: $addressList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyAddressBookState &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyAddressBookStateCopyWith<_$_MyAddressBookState> get copyWith =>
      __$$_MyAddressBookStateCopyWithImpl<_$_MyAddressBookState>(
          this, _$identity);
}

abstract class _MyAddressBookState implements MyAddressBookState {
  factory _MyAddressBookState({final List<Address> addressList}) =
      _$_MyAddressBookState;

  @override
  List<Address> get addressList;
  @override
  @JsonKey(ignore: true)
  _$$_MyAddressBookStateCopyWith<_$_MyAddressBookState> get copyWith =>
      throw _privateConstructorUsedError;
}
