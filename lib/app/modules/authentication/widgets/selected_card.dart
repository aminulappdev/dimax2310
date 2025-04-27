import 'package:dimax2310/app/utils/app_colors.dart';
import 'package:dimax2310/app/utils/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedCard extends StatelessWidget {
  final String op1Name;
  final String op1ImagePath;
  final VoidCallback op1Ontap;

  final String op2Name;
  final String op2ImagePath;
  final VoidCallback op2Ontap;
  const SelectedCard({
    super.key,
    required this.op1Name,
    required this.op1ImagePath,
    required this.op1Ontap,
    required this.op2Name,
    required this.op2ImagePath,
    required this.op2Ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.h,
      width: 350.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.buttonBackgroundColor),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: op1Ontap,
                  child: Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(op1ImagePath), fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 199, 198, 196)),
                  ),
                ),
                heightBox14,
                Text(
                  op1Name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            
            Column(
              children: [
                InkWell(
                  onTap: op2Ontap,
                  child: Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(op2ImagePath), fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 199, 198, 196)),
                  ),
                ),
                heightBox14,
                Text(
                  op2Name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
