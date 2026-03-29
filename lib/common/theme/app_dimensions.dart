
abstract class AppDimensions {
  const AppDimensions();

  double get xSmall;
  double get small;
  double get medium;
  double get large;
  double get xLarge;
  double get xxLarge;
  double get xxxLarge;

  double h(double value);
  double w(double value);
  double r(double value);

  double get xSmallW => w(xSmall);
  double get xSmallH => h(xSmall);

  double get smallW => w(small);
  double get smallH => h(small);

  double get mediumW => w(medium);
  double get mediumH => h(medium);

  double get largeW => w(large);
  double get largeH => h(large);

  double get xLargeW => w(xLarge);
  double get xLargeH => h(xLarge);

  double get xxLargeW => w(xxLarge);
  double get xxLargeH => h(xxLarge);

  double get xxxLargeW => w(xxxLarge);
  double get xxxLargeH => h(xxxLarge);

  // Page
  double get pagePadding;
  double get pageTopPadding;
  double get pageBottomPadding;
  double get cardPadding;

  double get gapSmall;
  double get gapMedium;
  double get appBarSize;

  // Radius
  double get radiusXSmall;
  double get radiusSmall;
  double get radiusMedium;
  double get radiusLarge;
  double get radiusXLarge;
  double get radiusXXLarge;

  // Icon Sizes
  double get iconSizeSmall;
  double get iconSizeMedium;
  double get iconSizeLarge;

  // Button Dimensions
  double get buttonHeight;
  double get buttonMaxWidth;

  double get countryFlagHeight;
  double get countryFlagWidth;

  // Pin Field Dimensions
  double get pinFieldHeight;
  double get pinFieldWidth;
}
