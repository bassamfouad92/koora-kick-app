import 'package:koora_kick/common/theme/app_font_sizes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScaledFontSizes implements AppFontSizes {
  const ScaledFontSizes(this._rawFonts);
  final AppFontSizes _rawFonts;

  @override
  double get headingExtraLarge => _rawFonts.headingExtraLarge.sp;

  @override
  double get headingLarge => _rawFonts.headingLarge.sp;

  @override
  double get headingMedium => _rawFonts.headingMedium.sp;

  @override
  double get headingSmall => _rawFonts.headingSmall.sp;

  @override
  double get headingExtraSmall => _rawFonts.headingExtraSmall.sp;

  @override
  double get bodyLarge => _rawFonts.bodyLarge.sp;

  @override
  double get bodyMedium => _rawFonts.bodyMedium.sp;

  @override
  double get bodySmall => _rawFonts.bodySmall.sp;

  @override
  double get bodyExtraSmall => _rawFonts.bodyExtraSmall.sp;

  @override
  double get buttonMedium => _rawFonts.buttonMedium.sp;
}