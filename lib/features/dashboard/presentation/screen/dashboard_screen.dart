import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/user/model/user.dart';
import 'package:koora_kick/features/dashboard/presentation/states/dashboard_state.dart';
import 'package:koora_kick/features/dashboard/presentation/viewmodels/dashboard_view_model.dart';
import 'package:koora_kick/features/profile/presentation/state/profile_state.dart';
import 'package:koora_kick/features/profile/presentation/widgets/profile_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final dimensions = context.dimensions;

    return KooraKickPageBuilder.noAppBar().withCustomLayout(
      (context, children, alignment) => state.when(
        initial: () => const SizedBox.shrink(),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error) => Center(
          child: Text(error?.generalMessage ?? "Something went wrong"),
        ).asAlwaysScrollable().withRefresh(
              () async => ref.read(dashboardProvider.notifier).loadDashboard(),
            ),
        loaded: (sections, profileStatus) => Column(
          children: [
            switch (profileStatus) {
              ProfileSuccess(:final profile) => _buildProfileHeader(
                  context,
                  profile,
                ),
              ProfileLoading() => const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              ProfileError() => _buildProfileHeader(
                  context,
                  const User(name: 'Bassam', email: '', phone: ''),
                ),
            },
            Divider(height: 1, color: context.colors.divider),
            Expanded(
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: _buildChannelsSection(context),
                  ),
                  SliverToBoxAdapter(
                    child: _buildStadiumUpdatesSection(context),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal: dimensions.medium,
                      vertical: dimensions.small,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        _buildFeedItem,
                        childCount: 5,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: dimensions.largeH),
                  ),
                ],
              ).withRefresh(
                () => ref.read(dashboardProvider.notifier).silentRefresh(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, User profile) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        context.dimensions.medium,
        context.dimensions.large,
        context.dimensions.medium,
        context.dimensions.medium,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileInfoWidget.builder(profile)
              .orientation(type: ProfileInfoOrientation.horizontal)
              .withSpacing(context.dimensions.xSmall)
              .withImage(size: context.dimensions.h(40))
              .withName(type: ProfileNameType.welcomeWithFirstName),
          const AppImage(
            source: 'https://cdn-icons-png.flaticon.com/512/5339/5339181.png', // Mock Logo
            type: ImageType.network,
            width: 32,
            height: 32,
          ),
        ],
      ),
    );
  }

  Widget _buildChannelsSection(BuildContext context) {
    final clubs = [
      {'name': 'Al-Hilal', 'logo': 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/Al-Hilal_Saudi_FC_logo.svg/1200px-Al-Hilal_Saudi_FC_logo.svg.png', 'joined': false},
      {'name': 'Al-Nassr', 'logo': 'https://upload.wikimedia.org/wikipedia/en/thumb/2/23/Al_Nassr_FC_logo.svg/1200px-Al_Nassr_FC_logo.svg.png', 'joined': true},
      {'name': 'Al-Ahli', 'logo': 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d4/Al-Ahli_Saudi_FC_logo.svg/1200px-Al-Ahli_Saudi_FC_logo.svg.png', 'joined': false},
      {'name': 'Al-Ittihad', 'logo': 'https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Al-Ittihad_Saudi_FC_logo.svg/1200px-Al-Ittihad_Saudi_FC_logo.svg.png', 'joined': true},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(context.dimensions.medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Your Channels', style: context.typo.bodyLarge.semiBold),
              Text('See All', style: context.typo.bodySmall.withColor(context.colors.primary)),
            ],
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: context.dimensions.small),
            itemCount: clubs.length,
            itemBuilder: (context, index) {
              final club = clubs[index];
              return Container(
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: context.dimensions.xSmall),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colors.surface,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: context.colors.divider),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        AppImage(
                          source: club['logo'] as String,
                          type: ImageType.network,
                          width: 50,
                          height: 50,
                        ),
                        if (!(club['joined'] as bool))
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: context.colors.primary,
                            child: const Icon(Icons.add, size: 12, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(club['name'] as String, style: context.typo.bodySmall.semiBold),
                    const Spacer(),
                    Container(
                      width: double.infinity,
                      height: 24,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: (club['joined'] as bool) ? Colors.transparent : context.colors.primary,
                        borderRadius: BorderRadius.circular(4),
                        border: (club['joined'] as bool) ? Border.all(color: context.colors.divider) : null,
                      ),
                      child: Text(
                        (club['joined'] as bool) ? 'Manage' : 'Join',
                        style: context.typo.bodySmall.copyWith(
                          fontSize: 10,
                          color: (club['joined'] as bool) ? context.colors.textSecondary : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildStadiumUpdatesSection(BuildContext context) {
    final updates = [
      {'title': 'Khobar Stadium', 'image': 'https://images.adsttc.com/media/images/5e4c/26f0/6ee0/8e2b/9d00/0677/large_jpg/00.jpg', 'progress': 0.75},
      {'title': 'Riyadh Arena', 'image': 'https://stadiumdb.com/images/stadiums/ksa/king_fahd_stadium/king_fahd_stadium01.jpg', 'progress': 0.3},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(context.dimensions.medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Local Stadium Updates', style: context.typo.bodyLarge.semiBold),
              Text('See All', style: context.typo.bodySmall.withColor(context.colors.primary)),
            ],
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: context.dimensions.small),
            itemCount: updates.length,
            itemBuilder: (context, index) {
              final update = updates[index];
              return Container(
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: context.dimensions.xSmall),
                decoration: BoxDecoration(
                  color: context.colors.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: context.colors.divider),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppImage(
                      source: update['image'] as String,
                      type: ImageType.network,
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(update['title'] as String, style: context.typo.bodyMedium.semiBold),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text('Progress', style: context.typo.bodySmall.copyWith(fontSize: 10)),
                              const Spacer(),
                              Text('${((update['progress'] as double) * 100).toInt()}%', style: context.typo.bodySmall.copyWith(fontSize: 10, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: update['progress'] as double,
                            backgroundColor: context.colors.divider,
                            valueColor: AlwaysStoppedAnimation(context.colors.primary),
                            minHeight: 4,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFeedItem(BuildContext context, int index) => Container(
      margin: EdgeInsets.only(bottom: context.dimensions.medium),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=$index'),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('User_${index + 100}', style: context.typo.bodySmall.semiBold),
                  Text('2h ago • Khobar', style: context.typo.bodySmall.withColor(context.colors.textTertiary).copyWith(fontSize: 10)),
                ],
              ),
              const Spacer(),
              Icon(Icons.more_horiz, color: context.colors.textTertiary),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Check out the latest progress on the Khobar stadium! It is looking amazing and nearly ready for 2027.',
            style: context.typo.bodyMedium,
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AppImage(
                  source: 'https://picsum.photos/seed/${index + 50}/600/300',
                  type: ImageType.network,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                if (index % 2 == 0)
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.play_arrow_rounded, color: Colors.white, size: 40),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.favorite_outline, size: 20, color: context.colors.textSecondary),
              const SizedBox(width: 4),
              Text('24', style: context.typo.bodySmall),
              const SizedBox(width: 16),
              Icon(Icons.chat_bubble_outline, size: 20, color: context.colors.textSecondary),
              const SizedBox(width: 4),
              Text('12', style: context.typo.bodySmall),
              const Spacer(),
              Icon(Icons.share_outlined, size: 20, color: context.colors.textSecondary),
            ],
          ),
        ],
      ),
    );
}
