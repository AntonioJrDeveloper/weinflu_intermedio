import 'package:app/screens/helpers/size_diagonal.dart';
import 'package:flutter/material.dart';

import 'package:weinds/weinds.dart';

enum ButtonState { active, hover, disable }

class StateDsButtonWidget extends StatelessWidget {
  const StateDsButtonWidget(
      {Key? key,
      required this.state,
      required this.type,
      required this.text,
      this.fontSize})
      : super(key: key);
  final ButtonState state;
  final ButtonType type;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    switch (state) {
      case ButtonState.hover:
        return DsButtonHoverWidget(
          type: type,
          text: text,
          fontSize: fontSize,
        );
      case ButtonState.disable:
        return DsButtonDisableWidget(
          text: text,
          fontSize: fontSize,
        );
      default:
        return WeinDsButton(
          type: type,
          text: text,
          size: getSizeDiagonal(context),
          fontSize: getSizeDiagonal(context) * fontSize!,
        );
    }
  }
}

class DsButtonDisableWidget extends StatelessWidget {
  const DsButtonDisableWidget({Key? key, required this.text, this.fontSize})
      : super(key: key);
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.bodySmall!;
    return MaterialButton(
      onPressed: () {},
      color: WeinDsColors.dark,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 0.5,
          color: WeinDsColorsFoundation.colorBorderButtonPrimary,
        ),
        borderRadius: BorderRadius.circular(getSizeDiagonal(context)),
      ),
      child: Text(
        text,
        style: textStyle.copyWith(
            color: WeinDsColorsFoundation.colorTextButtonPrimary,
            fontSize: getSizeDiagonal(context) * fontSize!),
      ),
    );
  }
}

class DsButtonHoverWidget extends StatelessWidget {
  const DsButtonHoverWidget(
      {Key? key, required this.type, required this.text, this.fontSize})
      : super(key: key);
  final ButtonType type;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getSizeDiagonal(context)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: WeinDsColors.dark.withOpacity(0.75),
                offset: const Offset(-4, 3))
          ]),
      child: WeinDsButton(
        type: type,
        text: text,
        size: getSizeDiagonal(context),
        fontSize: getSizeDiagonal(context) * fontSize!,
      ),
    );
  }
}
