import 'package:flutter/material.dart';
import 'package:koora_kick/common/constants/app_colors.dart';

enum FontFamily {
  Inter,
  Sora,
}

extension FontFamilyExtension on FontFamily {
  String string() {
    switch (this) {
      case FontFamily.Inter:
        return 'Inter';
      case FontFamily.Sora:
        return 'Sora';
    }
  }
}

class AppTextStyle {
  static TextStyle textBody(double fontSize,
      {Color textColor = AppColors.textDefault,
      FontFamily fontFamily = FontFamily.Inter,TextDecoration? decoration,}) => _textStyle(fontSize, FontWeight.w400, textColor,
        fontFamily: fontFamily,);

  static TextStyle textBold(double fontSize,
      {Color textColor = AppColors.textStrong,
      FontFamily fontFamily = FontFamily.Inter, TextDecoration? decoration,}) => _textStyle(fontSize, FontWeight.w600, textColor,
        fontFamily: fontFamily,);

  static TextStyle lineThrough(double fontSize,
      {Color textColor = AppColors.textStrong,
      FontFamily fontFamily = FontFamily.Inter,}) => _textStyle(fontSize, FontWeight.w700, textColor,
        fontFamily: fontFamily, decoration: TextDecoration.lineThrough,);

  static TextStyle textHeading(double fontSize,
      {Color textColor = AppColors.textStrong,
      FontFamily fontFamily = FontFamily.Sora,TextDecoration? decoration,}) => _textStyle(fontSize, FontWeight.w700, textColor,
        fontFamily: fontFamily,);

  static TextStyle textTitle(double fontSize,
      {Color textColor = AppColors.textStrong,
      FontFamily fontFamily = FontFamily.Sora,
      FontStyle fontStyle = FontStyle.normal,}) => _textStyle(fontSize, FontWeight.w400, textColor,
        fontFamily: fontFamily, fontStyle: fontStyle,);

  static TextStyle textRegular(double fontSize,
      {Color textColor = AppColors.textStrong,
      FontFamily fontFamily = FontFamily.Inter,}) => _textStyle(fontSize, FontWeight.w500, textColor,
        fontFamily: fontFamily,);

  static TextStyle _textStyle(
      double fontSize, FontWeight fontWeight, Color textColor,
      {FontFamily fontFamily = FontFamily.Inter,
      FontStyle fontStyle = FontStyle.normal,
      TextDecoration decoration = TextDecoration.none,}) => TextStyle(
        fontFamily: fontFamily.string(),
        fontWeight: fontWeight,
        letterSpacing: -0.5,
        fontSize: fontSize,
        fontStyle: fontStyle,
        color: textColor,
        decoration: decoration,);

  static TextStyle linkButton(
      {required double fontSize,
      required Color textColor,
      double letterSpacing = 1.0,}) => TextStyle(
        fontFamily: FontFamily.Inter.string(),
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,);

  static TextStyle placeHolderText(
      { double fontSize = 16,
       Color textColor = AppColors.textPlaceholder,}) => TextStyle(
        fontFamily: FontFamily.Inter.toString(),
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.w400,);
}

class AppText extends StatelessWidget {

  AppText.h1(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign = TextAlign.left,
    double fontSize = 28,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textHeading(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.h2(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign = TextAlign.left,
    double fontSize = 26,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textHeading(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.h3(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign = TextAlign.left,
    double fontSize = 24,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textHeading(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.body16(
    String text, {
    Key? key,
    Color color = AppColors.textDefault,
    TextAlign? textAlign,
    double fontSize = 16,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBody(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.body14(
    String text, {
    Key? key,
    Color color = AppColors.textDefault,
    TextAlign? textAlign,
    double fontSize = 14,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBody(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.body13(
    String text, {
    Key? key,
    Color color = AppColors.textSubtle,
    TextAlign? textAlign,
    double fontSize = 13,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBody(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.body12(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 12,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBody(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.body11(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 11,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBody(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.body10(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 10,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBody(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.navigationTitle(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 16,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.caption(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 12,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textRegular(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.captionBold(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 12,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.link(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 14,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.error(
    String text, {
    Key? key,
    Color color = AppColors.inputBorderError,
    TextAlign? textAlign,
    double fontSize = 13,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBody(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.bold(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 12,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.bold12(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 12,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.bold14(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 14,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.bold16(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 16,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );

  AppText.passengerName(
    String text, {
    Key? key,
    Color color = AppColors.textStrong,
    TextAlign? textAlign,
    double fontSize = 15,
  }) : this(
          text,
          key: key,
          style: AppTextStyle.textBold(fontSize, textColor: color),
          textAlign: textAlign,
        );
  const AppText(this.text, {super.key, this.style, this.textAlign});

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) => Text(
      text,
      key: key,
      style: style,
      textAlign: textAlign,
    );
}
