import 'package:flutter/material.dart';
import 'package:startech_project/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool? isBorderType;
  const CustomButton({super.key, required this.title, this.isBorderType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isBorderType == true ? null : AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15),
        border: isBorderType == true
            ? Border.all(color: AppColors.primaryColor, width: 2)
            : null,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isBorderType == true ? AppColors.primaryColor : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
