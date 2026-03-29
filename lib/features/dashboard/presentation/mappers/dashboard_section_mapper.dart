import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_banner.dart';
import 'package:koora_kick/features/dashboard/domain/entities/dashboard_section.dart';
import 'package:koora_kick/features/dashboard/presentation/models/dashboard_section_item.dart';
import 'package:koora_kick/utils/units/unit_formatting_extension.dart';
import 'package:koora_kick/utils/units/unit_formatter.dart';

class DashboardSectionMapper {
  DashboardSectionItem? map(DashboardSection section, TimeFormatStyle preferredTimeStyle) =>
      section.when(
        banner: (data) => BannerSectionItem(
          banner: DashboardBanner(
            id: '1',
            text: BannerText.titleAndSubtext(
              title: DashboardStrings.bannerDescription.localized(),
              subtext: DashboardStrings.bannerTitle.localized(),
            ),
            actionText: DashboardStrings.applyNow.localized(),
          ),

        ),
        alert: (data, title) => null,
      );
}
