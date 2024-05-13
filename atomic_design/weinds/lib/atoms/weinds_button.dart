import 'package:flutter/material.dart';
import 'package:weinds/foundations/colors.dart';

enum ButtonType {
  /// Represents a primary button with a filled background.
  primary,

  /// Represents a secondary button with a border.
  secondary,
}

/// A customizable button widget with primary and secondary styles.
class WeinDsButton extends StatelessWidget {
  /// Creates a customizable button widget.
  const WeinDsButton(
      {super.key,

      /// The type of button (primary or secondary).
      required this.type,

      /// The text displayed on the button.
      required this.text,

      /// The callback function triggered when the button is pressed.
      this.onPressed,
      this.size = 24,
      this.fontSize});

  final ButtonType type;
  final String text;
  final Function()? onPressed;
  final double? size;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.bodySmall!;

    final primaryButton = MaterialButton(
      onPressed: onPressed,
      disabledColor: WeinDsColorsFoundation.colorButtonPrimary,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 0.5,
          color: WeinDsColorsFoundation.colorBorderButtonPrimary,
        ),
        borderRadius: BorderRadius.circular(size!),
      ),
      child: Text(
        text,
        style: textStyle.copyWith(
            color: WeinDsColorsFoundation.colorTextButtonPrimary,
            fontSize: fontSize),
      ),
    );

    final secondaryButton = MaterialButton(
      onPressed: onPressed,
      color: WeinDsColorsFoundation
          .colorButtonSecondary, // Transparent background for secondary button
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 0.5,
          color: WeinDsColorsFoundation.colorBorderButtonSecondary,
        ),
        borderRadius: BorderRadius.circular(size!),
      ),
      child: Text(
        text,
        style: textStyle.copyWith(
            color: WeinDsColorsFoundation.colorTextButtonSecondary,
            fontSize: fontSize),
      ),
    );

    return type == ButtonType.primary ? primaryButton : secondaryButton;
  }
}
