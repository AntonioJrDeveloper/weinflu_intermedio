import 'package:flutter/material.dart';

import 'package:weinds/atoms/weinds_button.dart';

import 'package:app/widgets/widgets.dart';

class Mocks {
  Mocks._();

  static List<Widget> listPrimaryButtons = [
    const Column(
      children: <Widget>[
        SizeDsButtonWidget(
          size: ButtonSize.large,
          child: StateDsButtonWidget(
            state: ButtonState.active,
            type: ButtonType.primary,
            text: 'Button',
            fontSize: 0.1,
          ),
        ),
        SizeDsButtonWidget(
          size: ButtonSize.large,
          child: StateDsButtonWidget(
            state: ButtonState.disable,
            type: ButtonType.primary,
            text: 'Button',
            fontSize: 0.1,
          ),
        )
      ],
    ),
    const Column(
      children: <Widget>[
        SizeDsButtonWidget(
          size: ButtonSize.medium,
          child: StateDsButtonWidget(
            state: ButtonState.active,
            type: ButtonType.primary,
            text: 'Button',
            fontSize: 0.07,
          ),
        ),
        SizeDsButtonWidget(
          size: ButtonSize.medium,
          child: StateDsButtonWidget(
              state: ButtonState.disable,
              type: ButtonType.primary,
              text: 'Button',
              fontSize: 0.07),
        )
      ],
    ),
    const Column(
      children: <Widget>[
        SizeDsButtonWidget(
          size: ButtonSize.small,
          child: StateDsButtonWidget(
            state: ButtonState.active,
            type: ButtonType.primary,
            text: 'Button',
            fontSize: 0.035,
          ),
        ),
        SizeDsButtonWidget(
          size: ButtonSize.small,
          child: StateDsButtonWidget(
              state: ButtonState.disable,
              type: ButtonType.primary,
              text: 'Button',
              fontSize: 0.035),
        )
      ],
    ),
  ];

  static List<Widget> listSecundaryButtons = [
    const Column(
      children: <Widget>[
        SizeDsButtonWidget(
          size: ButtonSize.large,
          child: StateDsButtonWidget(
            state: ButtonState.active,
            type: ButtonType.secondary,
            text: 'Button',
            fontSize: 0.1,
          ),
        ),
        SizeDsButtonWidget(
          size: ButtonSize.large,
          child: StateDsButtonWidget(
            state: ButtonState.disable,
            type: ButtonType.secondary,
            text: 'Button',
            fontSize: 0.1,
          ),
        )
      ],
    ),
    const Column(
      children: <Widget>[
        SizeDsButtonWidget(
          size: ButtonSize.medium,
          child: StateDsButtonWidget(
            state: ButtonState.active,
            type: ButtonType.secondary,
            text: 'Button',
            fontSize: 0.07,
          ),
        ),
        SizeDsButtonWidget(
          size: ButtonSize.medium,
          child: StateDsButtonWidget(
              state: ButtonState.disable,
              type: ButtonType.secondary,
              text: 'Button',
              fontSize: 0.07),
        )
      ],
    ),
    const Column(
      children: <Widget>[
        SizeDsButtonWidget(
          size: ButtonSize.small,
          child: StateDsButtonWidget(
            state: ButtonState.active,
            type: ButtonType.secondary,
            text: 'Button',
            fontSize: 0.035,
          ),
        ),
        SizeDsButtonWidget(
          size: ButtonSize.small,
          child: StateDsButtonWidget(
              state: ButtonState.disable,
              type: ButtonType.secondary,
              text: 'Button',
              fontSize: 0.035),
        )
      ],
    ),
  ];
}
