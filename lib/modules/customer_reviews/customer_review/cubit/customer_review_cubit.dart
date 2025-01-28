import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/customer_review_model.dart';

part 'customer_review_cubit.freezed.dart';
part 'customer_review_state.dart';

class CustomerReviewCubit extends Cubit<CustomerReviewState> {
  CustomerReviewCubit() : super(CustomerReviewState.initial());


  void addCustomerReview(CustomerReview customerReviews) {
    final List<CustomerReview> list = [];
    list.add(customerReviews);
    list.addAll(state.customerReviewList);
    //list.add(customerReviews);
    emit(state.copyWith(customerReviewList: list,));
  }
}
