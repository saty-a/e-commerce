part of 'home_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<Product> productList,
    @Default(false) bool loading,
    @Default('Location') String location
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
      productList: [],
    loading: false,
    location: ''
  );

}
