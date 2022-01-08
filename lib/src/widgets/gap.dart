import 'package:flutter/material.dart';

class VerticalGap extends StatelessWidget {
  /// for Create Gap in Vertical way default value of gap is 8
  final double gap;

  const VerticalGap({Key? key, this.gap = 8}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap,
    );
  }

  /// for Create Gap of 12 in Vertical way
  static VerticalGap get v12 => VerticalGap(gap: 12);

  /// for Create Gap of 14 in Vertical way
  static VerticalGap get v14 => VerticalGap(gap: 14);

  /// for Create Gap of 16 in Vertical way
  static VerticalGap get v16 => VerticalGap(gap: 16);

  /// for Create Gap of 18 in Vertical way
  static VerticalGap get v18 => VerticalGap(gap: 18);

  /// for Create Gap of 20 in Vertical way
  static VerticalGap get v20 => VerticalGap(gap: 20);

  /// for Create Gap of 22 in Vertical way
  static VerticalGap get v22 => VerticalGap(gap: 22);

  /// for Create Gap of 24 in Vertical way
  static VerticalGap get v24 => VerticalGap(gap: 24);

  /// for Create Gap of 26 in Vertical way
  static VerticalGap get v26 => VerticalGap(gap: 26);

  /// for Create Gap of 28 in Vertical way
  static VerticalGap get v28 => VerticalGap(gap: 28);

  /// for Create Gap of 30 in Vertical way
  static VerticalGap get v30 => VerticalGap(gap: 30);
}

class HorizontalGap extends StatelessWidget {
  /// for Create Gap in Horizontal way default value of gap is 8
  final double gap;

  const HorizontalGap({Key? key, this.gap = 8}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gap,
    );
  }

  /// for Create Gap of 12 in Horizontal way
  static HorizontalGap get h12 => HorizontalGap(gap: 12);

  /// for Create Gap of 14 in Horizontal way
  static HorizontalGap get h14 => HorizontalGap(gap: 14);

  /// for Create Gap of 16 in Horizontal way
  static HorizontalGap get h16 => HorizontalGap(gap: 16);

  /// for Create Gap of 18 in Horizontal way
  static HorizontalGap get h18 => HorizontalGap(gap: 18);

  /// for Create Gap of 20 in Horizontal way
  static HorizontalGap get h20 => HorizontalGap(gap: 20);

  /// for Create Gap of 22 in Horizontal way
  static HorizontalGap get h22 => HorizontalGap(gap: 22);

  /// for Create Gap of 24 in Horizontal way
  static HorizontalGap get h24 => HorizontalGap(gap: 24);

  /// for Create Gap of 26 in Horizontal way
  static HorizontalGap get h26 => HorizontalGap(gap: 26);

  /// for Create Gap of 28 in Horizontal way
  static HorizontalGap get h28 => HorizontalGap(gap: 28);

  /// for Create Gap of 30 in Horizontal way
  static HorizontalGap get h30 => HorizontalGap(gap: 30);
}
