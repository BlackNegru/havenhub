import 'package:flutter/cupertino.dart';
import 'package:havenhub/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  final VoidCallback? onPressed; // Add this line

  ResponsiveButton({super.key, this.width, this.isResponsive, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Add this line
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
