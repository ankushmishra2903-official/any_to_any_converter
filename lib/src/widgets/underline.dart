import 'package:flutter/material.dart';
import '../widgets/gap.dart';

class Underline extends StatelessWidget {
  final double height, width, gap;
  final Color color;
  final Widget text;
  final bool isCenter, isDouble;

  const Underline(
      {Key? key,
        required this.height,
        required this.width,
        required this.color,
        required this.isCenter,
        this.isDouble = false,
        required this.text,
        required this.gap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = width;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        final Widget widget = isCenter ? Center(child: text) : text;
        final Widget underLine = width == 0.1
            ? Container(
          height: height,
          width: boxWidth,
          color: color,
        )
            : Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget,
            VerticalGap(
              gap: gap,
            ),
            underLine,
            if (isDouble) ...[
              SizedBox(
                height: 5,
              ),
              underLine,
            ]
          ],
        );
      },
    );
  }
}
