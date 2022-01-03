import 'package:flutter/material.dart';
import 'package:simple_sneaker_shop/core/presentation/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, this.onPressed, required this.text})
      : super(key: key);
  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary)),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.secondary,
        ),
      ),
    );
  }
}
