import 'dart:io';
import 'package:ecommerce/modules/customer_reviews/add_review/cubit/add_review_cubit.dart';
import 'package:ecommerce/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import '../../../data/models/customer_reviews.dart';
import '../../../data/values/images.dart';
import '../../../routes/app_routes.dart';
import '../../../styles/app_colors.dart';
import '../../../styles/text_styles.dart';
import '../../../widgets/bottom_sheet/bottom_sheet.dart';
import '../../../widgets/buttons/common_button.dart';
import '../../../widgets/dividers/app_divider.dart';
import '../../../widgets/rating/ratings_bar.dart';
import '../../../widgets/textfields/custom_textfield.dart';


class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  final List<XFile> _imageFileList = [];

  @override
  void initState() {
    super.initState();
    context.read<AddReviewCubit>().changeButtonStatus(true);
    context.read<AddReviewCubit>().addStarRating(0);
    context.read<AddReviewCubit>().reviewTextController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Review"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 70,
                  color: AppColors.grey100,
                  child: Image.asset(Images.imgPhones),
                ),
                20.wb,
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Apple iPhone 14 pro (Space black 128GB)",
                        style: Styles.tsR18
                            .copyWith(color: AppColors.grey900, height: 1.25),
                      ),
                      10.hb,
                      Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh",
                        style: Styles.tsR14
                            .copyWith(color: AppColors.grey600, height: 1.5),
                      ),
                      8.hb,
                      BlocBuilder<AddReviewCubit, AddReviewState>(
                        builder: (context, state) {
                          return StarRating(
                            onTap: (rating) {
                              context
                                  .read<AddReviewCubit>()
                                  .addStarRating(rating);
                              context
                                  .read<AddReviewCubit>()
                                  .changeButtonStatus(false);
                            },
                            size: 20,
                            rating: state.starRating,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ).sp(20, 16),
            const AppDivider(height: 5),
            10.hb,
            Text(
              "Add a photo or Video",
              style: Styles.tsSb18.copyWith(color: AppColors.grey900),
            ).sp(20, 5),
            6.hb,
            Text(
              "Shoppers finds images & videos more helpful than text alone.",
              style: Styles.tsR14.copyWith(color: AppColors.grey700),
            ).hp(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                fileUpload(
                    onPressed: () {
                      showBottomSheetCustomized(
                          context,
                          addFromGalleryOrCamera(
                              context: context,
                              onTap: () {
                                Navigator.pop(context);
                                pickFromCamera().then((value) {
                                  setState(() {});
                                });
                              },
                              onTap2: () {
                                Navigator.pop(context);
                                pickFromGallery().then((value) {
                                  setState(() {});
                                });
                              },
                              buttonText: "Camera",
                              buttonImage: Images.icUploadImage,
                              button2Text: "Gallery",
                              button2Image: Images.icUploadImage));
                    },
                    buttonText: "Add Photo",
                    buttonImage: Images.icUploadImage),
                fileUpload(
                    onPressed: () {
                      showBottomSheetCustomized(
                          context,
                          addFromGalleryOrCamera(
                              context: context,
                              onTap: () {
                                Navigator.pop(context);
                                pickVideoFromCamera().then((value) {
                                  setState(() {});
                                });
                              },
                              onTap2: () {
                                Navigator.pop(context);
                                pickVideoFromGallery().then((value) {
                                  setState(() {});
                                });
                              },
                              buttonText: "Camera",
                              buttonImage: Images.icUploadImage,
                              button2Text: "Gallery",
                              button2Image: Images.icUploadImage));
                    },
                    buttonImage: Images.icUploadVideo,
                    buttonText: "Add Video"),
              ],
            ).only(left: 20.w, right: 20.w, top: 20.h, bottom: 20.h),
            _imageFileList.isNotEmpty
                ? SizedBox(
                    height: 150.h,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _imageFileList.length,
                        separatorBuilder: (_, index) => 20.wb,
                        itemBuilder: (BuildContext context, index) {
                          var a = _imageFileList[index].name.split(".");
                          return Stack(
                            children: [
                              a[1] == "mp4"
                                  ? SizedBox(
                                      height: 120.h,
                                      width: 120.w,
                                      child: VideoApp(
                                          fileName:
                                              File(_imageFileList[index].path)),
                                    )
                                  /*VideoPlayer(displayVideo(
                              File(_imageFileList[index].path)))*/
                                  : SizedBox(
                                      height: 120.h,
                                      width: 120.w,
                                      child: Image.file(
                                        File(_imageFileList[index].path),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                              Positioned(
                                right: 2,
                                top: 4,
                                child: GestureDetector(
                                  onTap: () {
                                    removeItem(index);
                                  },
                                  child: Container(
                                    height: 25.h,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.grey100),
                                    child:
                                        SvgPicture.asset(Images.icCrossRound),
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                  ).only(left: 20, right: 10)
                : const SizedBox(),
            const AppDivider(),
            10.hb,
            Text(
              "Write your Review",
              style: Styles.tsSb18.copyWith(color: AppColors.grey900),
            ).sp(20, 10),
            5.hb,
            CustomTextField(
              controller: context.read<AddReviewCubit>().reviewTextController,
              hintText: "Would you like to write anything about this product?",
              maxlines: 4,
              filledColor: AppColors.white,
              borderColor: AppColors.grey500,
              onChanged: (value) {
                context
                        .read<AddReviewCubit>()
                        .reviewTextController
                        .text
                        .isNotEmpty
                    ? context.read<AddReviewCubit>().changeButtonStatus(false)
                    : context.read<AddReviewCubit>().changeButtonStatus(true);
              },
            ).sp(20, 20),
            const AppDivider(height: 2),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<AddReviewCubit, AddReviewState>(
        builder: (context, state) {
          return SafeArea(
            child: CommonButton(
              isDisabled: state.buttonStatus,
              buttonText: 'Submit Review',
              onPressed: () {
                /// Adding Values to model
                context.read<CustomerReviewCubit>().addCustomerReview(
                      CustomerReview(
                        reviewerName: "Anonymous",
                        reviewText: context
                            .read<AddReviewCubit>()
                            .reviewTextController
                            .text,
                        rating: state.starRating,
                        mediaUrls: _imageFileList,
                      ),
                    );
                Navigator.pushNamedAndRemoveUntil(
                    context,
                    Routes.customerReviews,
                    (route) => route.settings.name == Routes.productDetails);
              },
              padding: const EdgeInsets.symmetric(vertical: 16),
            ).hp(20),
          );
        },
      ).vp(10),
    );
  }

  /// File Upload
  Widget fileUpload(
      {required String buttonText,
      required String buttonImage,
      VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed ?? () {},
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.grey100,
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        padding:
            EdgeInsets.only(left: 30.w, right: 30.w, top: 14.h, bottom: 14.h),
        child: Row(
          children: [
            SvgPicture.asset(buttonImage),
            9.wb,
            Text(
              buttonText,
              style: Styles.tsSb16.copyWith(color: AppColors.grey900),
            )
          ],
        ),
      ),
    );
  }

  /// Add From Gallery Or Camera Buttons
  Widget addFromGalleryOrCamera(
      {required String buttonText,
      required String buttonImage,
      required String button2Text,
      required String button2Image,
      required BuildContext context,
      VoidCallback? onTap,
      VoidCallback? onTap2}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Add Image from",
              style: Styles.tsSb20.copyWith(color: AppColors.grey900),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(Images.icCrossRound))
          ],
        ),
        30.hb,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            fileUpload(
                buttonText: buttonText,
                buttonImage: buttonImage,
                onPressed: onTap ?? () {}),
            fileUpload(
                buttonText: button2Text,
                buttonImage: button2Image,
                onPressed: onTap2 ?? () {})
          ],
        )
      ],
    ).all(30.0);
  }

  void removeItem(int index) {
    setState(() {
      _imageFileList.removeAt(index);
    });
    debugPrint(">> ${_imageFileList.length}");
  }

  /// Function to Pick Image from Gallery.
  Future<void> pickFromGallery() async {
    XFile? imageFile;
    final ImagePicker picker = ImagePicker();

    /// Pick an image
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imageFile = XFile(image.path);
      _imageFileList.add(imageFile);
      debugPrint("Image File Gallery ==>>>> ${imageFile.path}");
      debugPrint("Image File List Abc => $_imageFileList");
    }
  }

  /// Function to Pick Image from Camera.
  Future<void> pickFromCamera() async {
    XFile? imageFile;
    final ImagePicker picker = ImagePicker();

    /// Pick an image
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imageFile = XFile(image.path);
      /*_imageFileList.add(imageFile);*/
      _imageFileList.add(imageFile);
      debugPrint("Image File List => $_imageFileList");
      debugPrint("Image File Camera ==>>>> ${imageFile.path}");
    }
  }

  /// Function to Pick Video from Camera.
  Future<void> pickVideoFromCamera() async {
    XFile? videoFile;
    final ImagePicker picker = ImagePicker();

    /// Pick an video
    final XFile? video = await picker.pickVideo(source: ImageSource.camera);
    if (video != null) {
      videoFile = XFile(video.path);
      _imageFileList.add(videoFile);
      debugPrint("Video File ===>> $videoFile");
    }
  }

  /// Function to Pick Video from Gallery
  Future<void> pickVideoFromGallery() async {
    XFile? videoFile;
    final ImagePicker picker = ImagePicker();

    /// Pick an video
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      videoFile = XFile(video.path);
      _imageFileList.add(videoFile);
      debugPrint("Video File List => ${videoFile.name}");
    }
  }
}

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({super.key, required this.fileName});

  final File fileName;

  @override
  VideoAppState createState() => VideoAppState();
}

class VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(widget.fileName)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? VideoPlayer(_controller)
            : Container(),
        Center(
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_circle,
            color: AppColors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
