import 'package:image_picker/image_picker.dart';

class CustomerReview {
  int? rating;
  List<XFile>? mediaUrls;
  String? reviewerName;
  String? reviewText;

  /// Customer Reviews Constructor
  CustomerReview(
      {this.rating,
      this.mediaUrls,
      this.reviewerName = "Anonymous",
      this.reviewText});
}
