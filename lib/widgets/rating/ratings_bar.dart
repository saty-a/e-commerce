import 'package:ecommerce_app/data/values/images.dart';
import 'package:ecommerce_app/utils/widget_extensions/widget_extenions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingBar extends StatefulWidget {
  RatingBar(
      {Key? key,
      this.rating = 0,
      this.total = 5,
      this.size = 18,
      this.spacing = 4,
      this.onTap})
      : super(key: key);
  late num? rating;
  final int total;
  final double size;
  final double spacing;
  final Function(int rating)? onTap;

  @override
  State<RatingBar> createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            widget.total,
            (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.rating = index + 1;
                    });
                    if (widget.onTap != null) {
                      widget.onTap!(index + 1);
                    }
                  },
                  child: SvgPicture.asset(
                    index < widget.rating! ? Images.icStarFill : Images.icStar,
                    height: widget.size,
                  ).rp(widget.spacing),
                )),
      ],
    );
  }
}

class StarRating extends StatelessWidget {
  final int totalStar;
  final int? rating;
  final double size;
  final double spacing;
  final Function(int index)? onTap;

  const StarRating({
    Key? key,
    this.totalStar = 5,
    this.rating = 0,
    this.size = 18,
    this.spacing = 4,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            totalStar,
            (index) => GestureDetector(
                  onTap: () =>onTap!(index+1),
                  child: SvgPicture.asset(
                    index < rating! ? Images.icStarFill : Images.icStar,
                    height: size,
                  ).rp(spacing),
                )),
      ],
    );
  }
}
