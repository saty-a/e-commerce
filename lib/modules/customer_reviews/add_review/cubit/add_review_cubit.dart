import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_review_cubit.freezed.dart';
part 'add_review_state.dart';

class AddReviewCubit extends Cubit<AddReviewState> {
  AddReviewCubit() : super( AddReviewState.initial());

  final reviewTextController = TextEditingController();

  void addStarRating(int value) {
    emit(state.copyWith(starRating: value));
  }

  void changeButtonStatus(bool value) {
    if(state.starRating > 0 && reviewTextController.text.isNotEmpty) {
      emit(state.copyWith(buttonStatus: value));
    } else {
      emit(state.copyWith(buttonStatus: true));
    }
  }

}
