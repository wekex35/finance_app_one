import 'package:finance_app_one/common/colors.dart';
import 'package:finance_app_one/common/constants.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String leftTitle;
  final String? rightTitle;
  final TextStyle? leftTextStyle;
  final TextStyle? rightTextStyle;
  final Widget? leftIcon;
  const SectionHeader({
    Key? key,
    required this.leftTitle,
    this.leftTextStyle,
    this.rightTitle,
    this.rightTextStyle,
    this.leftIcon,
  }) : super(key: key);

  static TextStyle defaultLeftTextStyle = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: eastBay);

  static TextStyle defaultRigthTextStyle =
      const TextStyle(fontSize: 16, color: eastBay);

  @override
  Widget build(BuildContext context) {
    _leftTitle() {
      return Row(
        children: [
          Text(
            leftTitle,
            style: leftTextStyle ?? defaultLeftTextStyle,
          ),
          const SizedBox(
            width: 10,
          ),
          leftIcon ?? Container()
        ],
        mainAxisSize: MainAxisSize.min,
      );
    }

    _rightTitle() {
      return rightTitle == null
          ? Container()
          : Row(
              children: [
                Text(
                  rightTitle!,
                  style: rightTextStyle ?? defaultRigthTextStyle,
                ),
              ],
              mainAxisSize: MainAxisSize.min,
            );
    }

    return Padding(
        padding: const EdgeInsets.only(top: defaultPadding),
        child: Row(
          children: [_leftTitle(), const Spacer(), _rightTitle()],
        ));
  }
}
