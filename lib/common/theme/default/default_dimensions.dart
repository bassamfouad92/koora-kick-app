import 'package:koora_kick/common/theme/app_dimensions.dart';

class DefaultAppDimensions extends AppDimensions {
  @override double get xSmall => 4;
  @override double get small => 8;
  @override double get medium => 16;
  @override double get large => 24;
  @override double get xLarge => 32;
  @override double get xxLarge => 40;
  @override double get xxxLarge => 48;

  @override
  double h(double value) => value;

  @override
  double w(double value) => value;

  @override
  double r(double value) => value;

  @override
  double get pagePadding => 16;

  @override
  double get pageTopPadding => 16;

  @override
  double get pageBottomPadding => 32;

  @override
  double get cardPadding => 16;

  @override
  double get gapSmall => 8;

  @override
  double get gapMedium => 16;

  @override
  double get radiusXSmall => 4;

  @override
  double get radiusSmall => 8;

  @override
  double get radiusMedium => 12;

  @override
  double get radiusLarge => 16;

  @override
  double get radiusXLarge => 50;

  @override
  double get radiusXXLarge => 100;

  @override
  double get appBarSize => 54;

  @override double get iconSizeSmall => 16;
  @override double get iconSizeMedium => 20;
  @override double get iconSizeLarge => 24;

  @override double get buttonHeight => 48;
  @override double get buttonMaxWidth => 500;
  @override double get countryFlagHeight => 10;
  @override double get countryFlagWidth => 14;
  @override double get pinFieldHeight => 60;
  @override double get pinFieldWidth => 75;
}
