import 'package:koora_kick/common/theme/app_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScaledAppDimensions extends AppDimensions {
  const ScaledAppDimensions(this._raw);

  final AppDimensions _raw;

  @override double get xSmall => _raw.xSmall;
  @override double get small => _raw.small;
  @override double get medium => _raw.medium;
  @override double get large => _raw.large;
  @override double get xLarge => _raw.xLarge;
  @override double get xxLarge => _raw.xxLarge;
  @override double get xxxLarge => _raw.xxxLarge;

  @override
  double w(double value) => value.w;

  @override
  double h(double value) => value.h;

  @override
  double r(double value) => value.r;

  @override
  double get pagePadding => w(_raw.pagePadding);

  @override
  double get pageTopPadding => h(_raw.pageTopPadding);

  @override
  double get pageBottomPadding => h(_raw.pageBottomPadding);

  @override
  double get cardPadding => w(_raw.cardPadding);

  @override
  double get gapSmall => h(_raw.gapSmall);

  @override
  double get gapMedium => w(_raw.gapMedium);

  @override
  double get radiusXSmall => _raw.radiusXSmall.r;

  @override
  double get radiusSmall => _raw.radiusSmall.r;

  @override
  double get radiusMedium => _raw.radiusMedium.r;

  @override
  double get radiusLarge => _raw.radiusLarge.r;

  @override
  double get radiusXLarge => _raw.radiusXLarge.r;

  @override
  double get radiusXXLarge => _raw.radiusXXLarge.r;

  @override
  double get appBarSize => h(_raw.appBarSize);

  @override
  double get iconSizeSmall => _raw.iconSizeSmall.r;

  @override
  double get iconSizeMedium => _raw.iconSizeMedium.r;

  @override
  double get iconSizeLarge => _raw.iconSizeLarge.r;

  @override
  double get buttonHeight => h(_raw.buttonHeight);

  @override
  double get buttonMaxWidth => w(_raw.buttonMaxWidth);
  @override

  double get countryFlagHeight => w(_raw.countryFlagHeight);
  @override
  double get countryFlagWidth => w(_raw.countryFlagWidth);

  @override
  double get pinFieldHeight => h(_raw.pinFieldHeight);

  @override
  double get pinFieldWidth => w(_raw.pinFieldWidth);
}