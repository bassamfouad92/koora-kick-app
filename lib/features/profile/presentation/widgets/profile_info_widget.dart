import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/theme/app_dimensions.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:flutter/material.dart';

enum ProfileInfoOrientation { vertical, horizontal }

enum ProfileNameType { fullname, firstName, welcomeWithFirstName }

class ProfileInfoWidget extends StatelessWidget {
  final User user;
  final ProfileInfoOrientation infoOrientation;
  final bool displayImage;
  final ProfileNameType nameType;
  final double imageRadius;
  final double? spacing;
  final bool showDetails;
  final int maxLines;

  const ProfileInfoWidget({
    super.key,
    required this.user,
    this.infoOrientation = ProfileInfoOrientation.vertical,
    this.displayImage = true,
    this.nameType = ProfileNameType.fullname,
    this.imageRadius = 50,
    this.spacing,
    this.showDetails = true,
    this.maxLines = 1,
  });

  // Fluent-like helper methods (Static factories or copy methods)
  static ProfileInfoWidget builder(User user) => ProfileInfoWidget(user: user);

  ProfileInfoWidget orientation({required ProfileInfoOrientation type, double? spacing}) =>
      _copyWith(infoOrientation: type, spacing: spacing);

  ProfileInfoWidget withImage({double? radius, double? size}) =>
      _copyWith(displayImage: true, imageRadius: size != null ? size / 2 : radius);

  ProfileInfoWidget withName({required ProfileNameType type}) => _copyWith(nameType: type);

  ProfileInfoWidget withSpacing(double value) => _copyWith(spacing: value);
  ProfileInfoWidget withMaxLines(int value) => _copyWith(maxLines: value);
  ProfileInfoWidget hideDetails() => _copyWith(showDetails: false);

  ProfileInfoWidget _copyWith({
    ProfileInfoOrientation? infoOrientation,
    bool? displayImage,
    ProfileNameType? nameType,
    double? imageRadius,
    double? spacing,
    bool? showDetails,
    int? maxLines,
  }) => ProfileInfoWidget(
      user: user,
      infoOrientation: infoOrientation ?? this.infoOrientation,
      displayImage: displayImage ?? this.displayImage,
      nameType: nameType ?? this.nameType,
      imageRadius: imageRadius ?? this.imageRadius,
      spacing: spacing ?? this.spacing,
      showDetails: showDetails ?? this.showDetails,
      maxLines: maxLines ?? this.maxLines,
    );

  @override
  Widget build(BuildContext context) {
    if (infoOrientation == ProfileInfoOrientation.vertical) {
      return Column(
        spacing: spacing ?? context.dimensions.mediumH,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (displayImage) _buildAvatar(context),
          _buildTextContent(context),
        ],
      );
    } else {
      return Row(
        spacing: spacing ?? context.dimensions.mediumW,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (displayImage) _buildAvatar(context),
          Expanded(child: _buildTextContent(context)),
        ],
      );
    }
  }

  Widget _buildAvatar(BuildContext context) => Container(
      width: imageRadius * 2,
      height: imageRadius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.colors.primary.withOpacity(0.1),
      ),
      clipBehavior: Clip.antiAlias,
      child: (user.picture != null
              ? AppImage.network(user.picture!)
              : AppImage.asset(AppAssets.icAvatar))
          .setStyle(const AppImageStyle(fit: BoxFit.cover))
          .build(),
    );

  Widget _buildTextContent(BuildContext context) {
    final name = switch (nameType) {
      ProfileNameType.fullname => user.name ?? '',
      ProfileNameType.firstName => user.firstName,
      ProfileNameType.welcomeWithFirstName => '${DashboardStrings.welcome.localized()}, ${user.firstName}!',
    };

    final textStyle = infoOrientation == ProfileInfoOrientation.vertical
        ? context.typo.headingLarge.copyWith(fontWeight: FontWeight.w700)
        : context.typo.headingLarge.semiBold;

    final nameWidget = infoOrientation.buildText(
      name: name,
      style: textStyle,
      maxLines: maxLines,
      dimensions: context.dimensions,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: infoOrientation == ProfileInfoOrientation.vertical 
          ? CrossAxisAlignment.center 
          : CrossAxisAlignment.start,
      children: [
        nameWidget,
        if (infoOrientation == ProfileInfoOrientation.vertical && showDetails)
          _buildRatingBadge(context).withPadding(EdgeInsets.only(top: context.dimensions.xSmall))
      ],
    );
  }

  Widget _buildRatingBadge(BuildContext context) => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, size: 20, color: context.colors.tertiary),
        SizedBox(width: context.dimensions.xSmallW),
        Text(
          user.rating.toStringAsFixed(1),
          style: context.typo.bodyMedium.copyWith(
            fontWeight: FontWeight.w500,
            color: context.colors.textPrimary,
          ),
        ),
      ],
    );
}

extension ProfileInfoOrientationX on ProfileInfoOrientation {
  Widget buildText({
    required String name,
    required TextStyle style,
    required int maxLines,
    required AppDimensions dimensions,
  }) {
    final textAlign = this == ProfileInfoOrientation.vertical ? TextAlign.center : TextAlign.start;

    Widget textWidget = Text(
      name,
      textAlign: textAlign,
      style: style,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    ).withHorizontalPadding(dimensions.mediumW);

    if (this == ProfileInfoOrientation.horizontal) {
      return FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: textWidget,
      );
    }

    return textWidget;
  }
}
