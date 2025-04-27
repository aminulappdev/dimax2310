
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewRow extends StatelessWidget {
  final String reviewTitle;
  final String amountTitle;
  final Widget review;
  final String amount;
  final String revieRate;
  const ReviewRow({
    super.key,
    required this.reviewTitle,
    required this.amountTitle,
    required this.review,
    required this.amount,
    required this.revieRate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              reviewTitle,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
            heightBox4,
            Row(
              children: [
                review,
                widthBox8,
                Text(
                  revieRate,
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              amountTitle,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
            heightBox4,
            Text(
              amount,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}