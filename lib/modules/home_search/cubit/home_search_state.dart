part of 'home_search_cubit.dart';

@freezed
class HomeSearchState with _$HomeSearchState {
  factory HomeSearchState({
    @Default(false) bool showEmptyState,
    @Default(false) bool showClearIcon,
    //TextEditingController? searchController,
  }) = _HomeSearchState;

//const factory HomeSearchState.initial() = _Initial;
}
