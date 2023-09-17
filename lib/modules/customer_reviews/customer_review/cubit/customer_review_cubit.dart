import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/data/models/customer_reviews.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
