import 'package:calentre/config/extensions/spacing.dart';
import 'package:calentre/config/theme/button_style.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.title,
      this.icon,
      required this.onPressed,
      this.width});

  final String title;
  final Widget? icon;
  final double? width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle(context),
      onPressed: onPressed,
      child: SizedBox(
        height: 50,
        width: width,
        child: Align(
          alignment: Alignment.center,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                child: icon,
              ),
              const SizedBox().x10(),
              FittedBox(
                fit: BoxFit.none,
                child: Text(title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
