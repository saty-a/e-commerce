import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_search_state.dart';
part 'home_search_cubit.freezed.dart';

class HomeSearchCubit extends Cubit<HomeSearchState> {
  HomeSearchCubit() : super(HomeSearchState());

  final TextEditingController searchController = TextEditingController();

  void onSearchSubmit() {
    emit(state.copyWith(showEmptyState: true));
  }

  void showClearIcon() {
    if(searchController.text.isNotEmpty) {
      emit(state.copyWith(showClearIcon: true));
    } else {
      emit(state.copyWith(showClearIcon: false));
    }
  }

  void onClearTap() {
    searchController.clear();
    emit(state.copyWith(showClearIcon: false));
  }
}
