import 'package:flutter/material.dart';
import 'package:ptc2/core/utils/color_manager.dart';

class ScaffoldMessengerApp {
  static void showSnackbar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.check, color: color),
            SizedBox(width: 8),
            Text(
              message,
              style: TextStyle(color: ColorManager.blackColor),
            ),
          ],
        ),
        backgroundColor: ColorManager.whiteColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          side: BorderSide(color: color, width: 2),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  static void showSnackbarError(
      BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(Icons.error, color: color),
            SizedBox(width: 8),
            Text(
              message,
              style: TextStyle(color: ColorManager.blackColor),
            ),
          ],
        ),
        backgroundColor: ColorManager.whiteColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          side: BorderSide(color: color, width: 2),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
