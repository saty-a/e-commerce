import 'package:image_picker/image_picker.dart';

/// Add Review Model

class Review {
  int? rating;
  String? addReview;
  List<XFile>? urls;

  /// Review
  Review({this.rating, this.urls, this.addReview});

  /// Response
  Review.fromJson(Map<String, dynamic> json) {
    rating = json['ratingId'];
    urls = json['urlId'];
    addReview = json['addReviewId'];
  }

  /// Request
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ratingId'] = rating;
    data['urlId'] = urls;
    data['addReviewId'] = addReview;
    return data;
  }
}
