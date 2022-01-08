import 'dart:ui';

import 'package:flutter/material.dart';

extension TextExtension on Text {
  ///Copy your Text while adding more style like if you use toH1Text Extension
  ///then while using [copyWith] you can also customize it like change color with [styleColor]
  ///In all member of [copyWith] prefix are indicate where it use for example text represent they are use for [Text] widget
  ///and [style] are represent they are in [TextStyle].

  Text copyWith({
    Key? textKey,
    StrutStyle? textStrutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? textLocale,
    bool? textSoftWrap,
    TextOverflow? textOverflow,
    double? textScaleFactor,
    int? textMaxLines,
    String? textSemanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,

    /// for style
    bool? styleInherit,
    Color? styleColor,
    Color? styleBackgroundColor,
    double? styleFontSize,
    FontWeight? styleFontWeight,
    FontStyle? styleFontStyle,
    double? styleLetterSpacing,
    double? styleWordSpacing,
    TextBaseline? styleTextBaseline,
    double? styleHeight,
    TextLeadingDistribution? styleLeadingDistribution,
    Locale? styleLocale,
    Paint? styleForeground,
    Paint? styleBackground,
    List<Shadow>? styleShadows,
    List<FontFeature>? styleFontFeatures,
    TextDecoration? styleDecoration,
    Color? styleDecorationColor,
    TextDecorationStyle? styleDecorationStyle,
    double? styleDecorationThickness,
    String? styleDebugLabel,
    String? styleFontFamily,
    List<String>? styleFontFamilyFallback,
    String? stylePackage,
    TextOverflow? styleOverflow,
  }) {
    String _text = data ?? "";
    Key? _key = textKey ?? key;
    TextStyle _style = style ?? TextStyle();
    StrutStyle? _strutStyle = textStrutStyle ?? strutStyle;
    TextAlign? _textAlign = textAlign ?? this.textAlign;
    TextDirection? _textDirection = textDirection ?? this.textDirection;
    Locale? _locale = textLocale ?? locale;
    bool? _softWrap = textSoftWrap ?? softWrap;
    TextOverflow? _overflow = textOverflow ?? overflow;
    double? _textScaleFactor = textScaleFactor ?? this.textScaleFactor;
    int? _maxLines = textMaxLines ?? maxLines;
    String? _semanticsLabel = textSemanticsLabel ?? semanticsLabel;
    TextWidthBasis? _textWidthBasis = textWidthBasis ?? this.textWidthBasis;
    TextHeightBehavior? _textHeightBehavior =
        textHeightBehavior ?? this.textHeightBehavior;

    return Text(
      _text,
      key: _key,
      style: _style.copyWith(
        inherit: styleInherit,
        color: styleColor,
        backgroundColor: styleBackgroundColor,
        fontSize: styleFontSize,
        fontWeight: styleFontWeight,
        fontStyle: styleFontStyle,
        letterSpacing: styleLetterSpacing,
        wordSpacing: styleWordSpacing,
        textBaseline: styleTextBaseline,
        height: styleHeight,
        leadingDistribution: styleLeadingDistribution,
        locale: styleLocale,
        foreground: styleForeground,
        background: styleBackground,
        shadows: styleShadows,
        fontFeatures: styleFontFeatures,
        decoration: styleDecoration,
        decorationColor: styleDecorationColor,
        decorationStyle: styleDecorationStyle,
        decorationThickness: styleDecorationThickness,
        debugLabel: styleDebugLabel,
        fontFamily: styleFontFamily,
        fontFamilyFallback: styleFontFamilyFallback,
        overflow: styleOverflow,
        package: stylePackage,
      ),
      strutStyle: _strutStyle,
      textAlign: _textAlign,
      textDirection: _textDirection,
      locale: _locale,
      softWrap: _softWrap,
      overflow: _overflow,
      textScaleFactor: _textScaleFactor,
      maxLines: _maxLines,
      semanticsLabel: _semanticsLabel,
      textWidthBasis: _textWidthBasis,
      textHeightBehavior: _textHeightBehavior,
    );
  }
}
