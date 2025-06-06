import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

void showCustomSnackbar({
  required String title,
  required String message,
  Color leftBarColor = Colors.green, // Default green border
  Duration duration = const Duration(seconds: 3),
}) {
  Get.snackbar(
    title,
    message,
    backgroundColor: Colors.white,
    colorText: Colors.black,
    duration: duration,
    margin: const EdgeInsets.all(10),
    borderRadius: 20,
    isDismissible: true,
    snackPosition: SnackPosition.TOP,
    boxShadows: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 5,
      ),
    ],
    leftBarIndicatorColor: leftBarColor, // Green left border
    icon: const HugeIcon(
      icon: HugeIcons.strokeRoundedCheckmarkCircle02,
      color: Colors.green,
    ), // Optional icon
  );
}

/// Trims a string to a specified maximum length and adds an ellipsis if truncated.
///
/// This function takes an input string and returns a shortened version if it exceeds
/// the specified maximum length. The shortened string will end with an ellipsis
/// to indicate truncation. If the input string is shorter than the maximum length,
/// it is returned unchanged.
///
/// Examples:
///   trimText("Hello world", maxLength: 5) → "Hello..."
///   trimText("Hi", maxLength: 5) → "Hi"
///
/// Parameters:
///   - [text]: The input string to be potentially trimmed
///   - [maxLength]: The maximum allowed length before trimming occurs (default: 50)
///   - [ellipsis]: The suffix added when text is trimmed (default: '...')
///
/// Returns:
///   The original string if shorter than maxLength, or a trimmed version with ellipsis
///
/// Notes:
///   - The ellipsis length is included in the total maxLength calculation
///   - For Unicode/emoji-safe trimming, consider using characters package
///   - To preserve word boundaries, see [trimTextPreserveWords] alternative
String trimText(String text, {int maxLength = 50, String ellipsis = '...'}) {
  if (text.length <= maxLength) return text;
  return '${text.substring(0, maxLength)}$ellipsis';
}
