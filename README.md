# any_to_any_converter

A Flutter Package to convert any type to any type

## Getting started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  any_to_any_converter: any
```

In your library add the following import:

```dart
import 'package:any_to_any_converter/any_to_any_converter.dart';
```

## How to use

### String

- To first letter of string capital example
 ``` 
 "your string".toFirstCapital() 
 ```
and you get result Your string
- To all first letter of string capital example
 ``` 
 "your string".toEveryFirstCapital() 
 ```
and you get result Your String
- To set in camel case of string example
 ``` 
 "your string".toCamelCase() 
 ```
and you get result yOuR StRiNg
- To get only first character of string example
 ``` 
 "Your string".toSingleLetter() 
 ```
and you get result Y
- To get all first letter of string with joinWith example
 ``` 
 "your string".toEverySingleLetter(joinWith: ".") 
 ```
and you get result Y.S
- To get double value from string example
 ``` 
 "1.2".toDouble() 
 ```
- To get int value from string example
 ``` 
 "1".toInt() 
 ```
- To get date with any format you want example
 ``` 
 "2021-05-10".toDate(format: FormatDate.dmy) 
 ```
and you get result 10/05/2021

#### Date Format

| Format Name | Result |
| --- | --- |
| FormatDate.dmyDash | 16-08-2021 |
| FormatDate.mdyDash | 08-16-2021 |
| FormatDate.ymdDash | 2021-08-16 |
| FormatDate.ydmDash | 2021-16-08 |
| FormatDate.dmy | 16/08/2021 |
| FormatDate.mdy | 08/16/2021 |
| FormatDate.ymd | 2021/08/16 |
| FormatDate.ydm | 2021/16/08 |
| FormatDate.dmyDash12 | 16-08-2021 11:30 PM |
| FormatDate.dmyDash12WithSec | 16-08-2021 11:30:10 PM |
| FormatDate.mdyDash12 | 08-16-2021 11:30 PM|
| FormatDate.mdyDash12WithSec | 08-16-2021 11:30:10 PM|
| FormatDate.ymdDash12 | 2021-08-16 11:30 PM|
| FormatDate.ymdDash12WithSec | 2021-08-16 11:30:10 PM|
| FormatDate.ydmDash12 | 2021-16-08 11:30 PM|
| FormatDate.ydmDash12WithSec | 2021-16-08 11:30:10 PM|
| FormatDate.dmy12 | 16/08/2021 11:30 PM|
| FormatDate.dmy12WithSec | 16/08/2021 11:30:10 PM|
| FormatDate.mdy12 | 08/16/2021 11:30 PM |
| FormatDate.mdy12WithSec | 08/16/2021 11:30:10 PM |
| FormatDate.ymd12 | 2021/08/16 11:30 PM|
| FormatDate.ymd12WithSec | 2021/08/16 11:30:10 PM |
| FormatDate.ydm12 | 2021/16/08 11:30 PM |
| FormatDate.ydm12WithSec | 2021/16/08 11:30:10 PM |
| FormatDate.dmyDash24 | 16-08-2021 23:30 |
| FormatDate.dmyDash24WithSec | 16-08-2021 23:30:10 |
| FormatDate.mdyDash24 | 08-16-2021 23:30 |
| FormatDate.mdyDash24WithSec | 08-16-2021 23:30:10 |
| FormatDate.ymdDash24 | 2021-08-16 23:30 |
| FormatDate.ymdDash24WithSec | 2021-08-16 23:30:10 |
| FormatDate.ydmDash24 | 2021-16-08 23:30 |
| FormatDate.ydmDash24WithSec | 2021-16-08 23:30:10 |
| FormatDate.dmy24 | 16/08/2021 23:30 |
| FormatDate.dmy24WithSec | 16/08/2021 23:30:10 |
| FormatDate.mdy24 | 08/16/2021 23:30 |
| FormatDate.mdy24WithSec | 08/16/2021 23:30:10 |
| FormatDate.ymd24 | 2021/08/16 23:30 |
| FormatDate.ymd24WithSec | 2021/08/16 23:30:10 |
| FormatDate.ydm24 | 2021/16/08 23:30 |
| FormatDate.ydm24WithSec | 2021/16/08 23:30:10 |
| FormatDate.time12 | 11:30 PM |
| FormatDate.time12WithSec | 11:30:10 PM |
| FormatDate.time24 | 23:30 |
| FormatDate.time24WithSec | 23:30:10 |

### String to Text

```
"This is Text".toText(),
"This is H1 Text".toH1Text(context),
"This is H2 Text".toH2Text(context),
"This is H3 Text".toH3Text(context),
"This is H4 Text".toH4Text(context),
"This is H5 Text".toH5Text(context),
"This is H6 Text".toH6Text(context),
"This is Body Text 1".toBodyText1(context),
"This is Body Text 2".toBodyText2(context),
"This is Caption".toCaption(context),
"This is Subtitle 1".toSubtitle1(context),
"This is Subtitle 2".toSubtitle2(context),
```

### Using copyWith in Text
Parameter of copyWith as same as Text except data, Parameters of Text have text as prefix and Parameters of TextStyle has style as prefix

```
"This is H1 Text with fontSize 20"
              .toH1Text(context)
              .copyWith(styleFontSize: 20),
```

### Underline in any Widget
There are different type of underline like Single Underline, Single dashed Underline, Single dotted Underline, Double Underline, Double dashed Underline, Double dotted Underline
all type of underline take 4 parameter ``` thickness, gapWithText, color, isCenter ``` by default its value is ``` 1, 2, Colors.black, false ``` respectively

#### Single Underline
```
"This is Single underline"
              .toText()
              .underline(),
```

#### Double Underline
```
"This is Double underline"
              .toText()
              .doubleUnderline(),
```

#### Single Dashed Underline
```
"This is Single Dashed underline"
              .toText()
              .dashUnderline(),
```

#### Double Dashed Underline
```
"This is Double Dashed underline"
              .toText()
              .doubleDashUnderline(),
```

#### Single Dotted Underline
```
"This is Single Dotted underline"
              .toText()
              .dottedUnderline(),
```

#### Double Dotted Underline
```
"This is Double Dotted underline"
              .toText()
              .doubleDottedUnderline(),
```


### Gaps
```
Column(
    children: [
      "Text 1".toText(),
      VerticalGap(),
      "Text 2".toText(),
      VerticalGap(gap: 12,),
      Row(
        children: [
          "Text 3".toText(),
          HorizontalGap(gap: 20,),
          "Text 4".toText()
        ],
      )
    ],
),
```

also use as 
```
VerticalGap.v12, // VerticalGap(gap: 12),
VerticalGap.v14, // VerticalGap(gap: 14),
VerticalGap.v16, // VerticalGap(gap: 16),
VerticalGap.v18, // VerticalGap(gap: 18),
VerticalGap.v20, // VerticalGap(gap: 20),
VerticalGap.v22, // VerticalGap(gap: 22),
VerticalGap.v24, // VerticalGap(gap: 24),
VerticalGap.v26, // VerticalGap(gap: 26),
VerticalGap.v28, // VerticalGap(gap: 28),
VerticalGap.v30, // VerticalGap(gap: 30),

HorizontalGap.v12, // HorizontalGap(gap: 12),
HorizontalGap.v14, // HorizontalGap(gap: 14),
HorizontalGap.v16, // HorizontalGap(gap: 16),
HorizontalGap.v18, // HorizontalGap(gap: 18),
HorizontalGap.v20, // HorizontalGap(gap: 20),
HorizontalGap.v22, // HorizontalGap(gap: 22),
HorizontalGap.v24, // HorizontalGap(gap: 24),
HorizontalGap.v26, // HorizontalGap(gap: 26),
HorizontalGap.v28, // HorizontalGap(gap: 28),
HorizontalGap.v30, // HorizontalGap(gap: 30),
```