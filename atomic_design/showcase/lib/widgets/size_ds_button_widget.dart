import 'package:app/screens/helpers/size_diagonal.dart';
import 'package:flutter/material.dart';

enum ButtonSize { large, medium, small }

class SizeDsButtonWidget extends StatelessWidget {
  const SizeDsButtonWidget({Key? key, required this.size, required this.child})
      : super(key: key);
  final ButtonSize size;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    switch (size) {
      case ButtonSize.medium:
        return Container(
          margin: const EdgeInsets.all(7.5),
          width: getSizeDiagonal(context) * 0.50,
          height: 67,
          child: child,
        );
      case ButtonSize.small:
        return Container(
          margin: const EdgeInsets.all(7.5),
          width: getSizeDiagonal(context) * 0.25,
          height: 55,
          child: child,
        );
      default:
        return Container(
          margin: const EdgeInsets.all(7.5),
          width: getSizeDiagonal(context) * 0.75,
          height: 90,
          child: child,
        );
    }
  }
}
