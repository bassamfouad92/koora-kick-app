import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/common/widgets/screen/status_screen.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_banner.dart';
import 'package:koora_kick/features/dashboard/presentation/widgets/banner_widget.dart';
import 'package:flutter/material.dart';

abstract class DashboardSectionItem {
  String? get title;
  Widget render(BuildContext context);
}

class BannerSectionItem extends DashboardSectionItem {
  final DashboardBanner banner;
  @override
  final String? title;

  BannerSectionItem({required this.banner, this.title});

  @override
  Widget render(BuildContext context) => BannerWidget(
      message: banner.text.maybeWhen(
        titleAndSubtext: (title, _, _, _) => title,
        orElse: () => "",
      ),
    );
}

