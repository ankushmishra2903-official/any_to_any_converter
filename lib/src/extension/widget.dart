import 'package:flutter/material.dart';

import '../widgets/underline.dart';

/// For underline your widget here are 6 type of underline you can use
/// all are having 4 members [thickness], [gapWithText], [color] and [isCenter].
/// double [thickness] => use for underline thickness, default value is 1
/// double [gapWithText] => use for define gap between widget and underline, default is 2
/// Color [color] => use for color of underline, default is black
/// bool [isCenter] => use for define widget is in center of underline, default is false

extension WidgetExtension on Widget {
  /// For make Single Underline
  Widget underline({
    double thickness = 1,
    double gapWithText = 2,
    Color color = Colors.black,
    bool isCenter = false,
  }) =>
      Underline(
        text: this,
        isCenter: isCenter,
        gap: gapWithText,
        height: thickness,
        width: 0.1,
        color: color,
      );

  /// For make Single dotted Underline
  Widget dottedUnderline({
    double thickness = 1,
    double gapWithText = 2,
    Color color = Colors.black,
    bool isCenter = false,
  }) =>
      Underline(
        text: this,
        isCenter: isCenter,
        gap: gapWithText,
        height: thickness,
        width: 2,
        color: color,
      );

  /// For make Single dashed Underline
  Widget dashUnderline({
    double thickness = 1,
    double gapWithText = 2,
    Color color = Colors.black,
    bool isCenter = false,
  }) =>
      Underline(
        text: this,
        isCenter: isCenter,
        gap: gapWithText,
        height: thickness,
        width: 10,
        color: color,
      );

  /// For make Double Underline
  Widget doubleUnderline({
    double thickness = 1,
    double gapWithText = 2,
    Color color = Colors.black,
    bool isCenter = false,
  }) =>
      Underline(
        text: this,
        isCenter: isCenter,
        gap: gapWithText,
        height: thickness,
        width: 0.1,
        color: color,
        isDouble: true,
      );

  /// For make Double Dotted Underline
  Widget doubleDottedUnderline({
    double thickness = 1,
    double gapWithText = 2,
    Color color = Colors.black,
    bool isCenter = false,
  }) =>
      Underline(
        text: this,
        isCenter: isCenter,
        gap: gapWithText,
        height: thickness,
        width: 2,
        color: color,
        isDouble: true,
      );

  /// For make Double Dashed Underline
  Widget doubleDashUnderline({
    double thickness = 1,
    double gapWithText = 2,
    Color color = Colors.black,
    bool isCenter = false,
  }) =>
      Underline(
        text: this,
        isCenter: isCenter,
        gap: gapWithText,
        height: thickness,
        width: 10,
        color: color,
        isDouble: true,
      );

  /// To make any widget into [Card] with all other member of [Card]
  Card toCard({
    Key? key,
    Color? color,
    Color? shadowColor,
    double? elevation,
    ShapeBorder? shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry? margin,
    Clip? clipBehavior,
    bool semanticContainer = true,
  }) =>
      Card(
        child: this,
        color: color,
        key: key,
        elevation: elevation,
        margin: margin,
        clipBehavior: clipBehavior,
        shape: shape,
        borderOnForeground: borderOnForeground,
        semanticContainer: semanticContainer,
        shadowColor: shadowColor,
      );

  /// To make any widget into [SizedBox] with all other member of [SizedBox]
  SizedBox toSizedBox({
    Key? key,
    double? width,
    double? height,
  }) =>
      SizedBox(
        child: this,
        key: key,
        width: width,
        height: height,
      );

  /// To make any widget into [Container] with all other member of [Container]
  Container toContainer({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Clip clipBehavior = Clip.none,
  }) =>
      Container(
        child: this,
        key: key,
        alignment: alignment,
        padding: padding,
        color: color,
        decoration: decoration,
        foregroundDecoration: foregroundDecoration,
        width: width,
        height: height,
        constraints: constraints,
        margin: margin,
        transform: transform,
        transformAlignment: transformAlignment,
        clipBehavior: clipBehavior,
      );

  /// to set padding same in all side
  Padding paddingAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  /// to set padding in Symmetric way horizontal and vertical
  Padding paddingSymmetric({double horizontal = 0, double vertical = 0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  /// to set padding in different in left top right bottom
  Padding paddingLTRB(double left, double top, double right, double bottom) =>
      Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  /// to set padding in only in left top right bottom any
  Padding paddingOnly(
          {double left = 0,
          double top = 0,
          double right = 0,
          double bottom = 0}) =>
      Padding(
        padding:
            EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}
