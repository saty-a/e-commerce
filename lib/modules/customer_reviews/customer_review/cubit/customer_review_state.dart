part of 'customer_review_cubit.dart';

@freezed
class CustomerReviewState with _$CustomerReviewState {
  factory CustomerReviewState({
    @Default([]) List<CustomerReview> customerReviewList,
  }) = _CustomerReviewState;

  factory CustomerReviewState.initial() =>
      CustomerReviewState(customerReviewList: [
        CustomerReview(
          reviewerName: "Mayank Jain",
          rating: 3,
          reviewText: "I have purchased it on 9 Nov 22 and got it on 14th nov."
              "Its an excellent device.",
          mediaUrls: [],
        ),
        CustomerReview(
          reviewerName: "Priyam Srivastava",
          rating: 4,
          reviewText: "Bought"
              " this table 2 months ago and I wanted to say,"
              " this is the best bedside table I’ve ever used 😍",
          mediaUrls: [],
        ),
        CustomerReview(
          rating: 4,
          reviewText: "Bought"
              " this table 2 months ago and I wanted to say,"
              " this is the best bedside table I’ve ever used 😍 I’ve ever used 😍",
          mediaUrls: [],
        ),
      ]);
}
