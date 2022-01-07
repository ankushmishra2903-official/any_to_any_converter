import 'package:flutter/material.dart';

extension StringToTextExtension on String {
  /// to Normal Text
  Text toText() => Text(this);

  /// to H1 heading Text
  Text toH1Text(context) => Text(
        this,
        style: Theme.of(context).textTheme.headline1,
      );

  /// to H2 heading Text
  Text toH2Text(context) => Text(
        this,
        style: Theme.of(context).textTheme.headline2,
      );

  /// to H3 heading Text
  Text toH3Text(context) => Text(
        this,
        style: Theme.of(context).textTheme.headline3,
      );

  /// to H4 heading Text
  Text toH4Text(context) => Text(
        this,
        style: Theme.of(context).textTheme.headline4,
      );

  /// to H5 heading Text
  Text toH5Text(context) => Text(
        this,
        style: Theme.of(context).textTheme.headline5,
      );

  /// to H6 heading Text
  Text toH6Text(context) => Text(
        this,
        style: Theme.of(context).textTheme.headline6,
      );

  /// to Body Text 1
  Text toBodyText1(context) => Text(
        this,
        style: Theme.of(context).textTheme.bodyText1,
      );

  /// to Body Text 2
  Text toBodyText2(context) => Text(
        this,
        style: Theme.of(context).textTheme.bodyText2,
      );

  /// to Caption
  Text toCaption(context) => Text(
        this,
        style: Theme.of(context).textTheme.caption,
      );

  /// to Sub Title1
  Text toSubtitle1(context) => Text(
        this,
        style: Theme.of(context).textTheme.subtitle1,
      );

  /// to Sub Title2
  Text toSubtitle2(context) => Text(
        this,
        style: Theme.of(context).textTheme.subtitle2,
      );
}
