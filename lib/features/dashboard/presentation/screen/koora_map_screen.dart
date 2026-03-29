import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_typography.dart';

class KooraMapScreen extends StatelessWidget {
  const KooraMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KooraKickPageBuilder.noAppBar().content(
      Stack(
        children: [
          // Placeholder for Google Maps
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: context.colors.primary.withOpacity(0.05),
              image: const DecorationImage(
                image: NetworkImage('https://miro.medium.com/v2/resize:fit:1400/1*q3Z9_88a2I5Y9yW1uZIBUw.png'), // Mock Map
                fit: BoxFit.cover,
                opacity: 0.3,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.stadium_rounded, size: 64, color: context.colors.primary),
                  const SizedBox(height: 16),
                  Text('KooraMap Live', style: context.typo.headingLarge.semiBold),
                  Text('Showing 12 stadiums in KSA', style: context.typo.bodyMedium.withColor(context.colors.textSecondary)),
                ],
              ),
            ),
          ),
          
          // Marker Overlay
          Positioned(
            top: 200,
            left: 100,
            child: _buildMarker(context, 'Khobar City'),
          ),
          Positioned(
            top: 400,
            right: 80,
            child: _buildMarker(context, 'Riyadh Hub'),
          ),

          // Search Bar
          Positioned(
            top: context.dimensions.mediumH,
            left: context.dimensions.mediumW,
            right: context.dimensions.mediumW,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: context.colors.surface,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: context.colors.textSecondary),
                    const SizedBox(width: 12),
                    Text('Search for a stadium...', style: context.typo.bodyMedium.withColor(context.colors.textTertiary)),
                    const Spacer(),
                    Icon(Icons.tune, color: context.colors.primary),
                  ],
                ),
              ),
            ),
          ),

          // Info Card
          Positioned(
            bottom: context.dimensions.mediumH,
            left: context.dimensions.mediumW,
            right: context.dimensions.mediumW,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colors.surface,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20, offset: const Offset(0, 10)),
                ],
              ),
              child: Row(
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: AppImage(
                      source: 'https://images.adsttc.com/media/images/5e4c/26f0/6ee0/8e2b/9d00/0677/large_jpg/00.jpg',
                      type: ImageType.network,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Khobar International Stadium', style: context.typo.bodyLarge.semiBold),
                        Text('85% Completion • Open 2027', style: context.typo.bodySmall.withColor(context.colors.textSecondary)),
                        const SizedBox(height: 8),
                        AppButton.primary(
                          'View Latest Updates',
                          onPressed: () {},
                        ).copyWith(height: 32).withHorizontalPadding(16.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMarker(BuildContext context, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: context.colors.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
        ),
        Icon(Icons.location_on, color: context.colors.primary, size: 32),
      ],
    );
  }
}
