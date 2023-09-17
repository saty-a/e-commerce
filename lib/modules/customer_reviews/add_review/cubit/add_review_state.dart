part of 'add_review_cubit.dart';

@freezed
class AddReviewState with _$AddReviewState {
  const factory AddReviewState({
    @Default([]) List<XFile> wishlistProductList,
    @Default(true) bool buttonStatus,
    @Default(0) int starRating,
  }) = _AddReviewState;

  factory AddReviewState.initial() => const AddReviewState(buttonStatus: true, starRating: 0);
}
