import 'package:flutter/foundation.dart';

@immutable
class OnboardingStrings {
  const OnboardingStrings._();

  // Interests screen
  static const interestsTitle = 'onboarding_interests_title';
  static const interestsSubtitle = 'onboarding_interests_subtitle';
  static const interestsUpdateLater = 'onboarding_interests_updateLater';
  static const favoriteClubsTitle = 'onboarding_favoriteClubs_title';
  static const favoriteClubsSubtitle = 'onboarding_favoriteClubs_subtitle';
  static const topicsTitle = 'onboarding_topics_title';
  static const topicsSubtitle = 'onboarding_topics_subtitle';
  static const continueButton = 'global_continue';

  // Topic chips
  static const topicNews = 'onboarding_topic_news';
  static const topicMatchUpdates = 'onboarding_topic_matchUpdates';
  static const topicTransfers = 'onboarding_topic_transfers';
  static const topicTactics = 'onboarding_topic_tactics';
  static const topicFanDiscussions = 'onboarding_topic_fanDiscussions';
  static const topicStadiums = 'onboarding_topic_stadiums';
  static const topicLiveScreenings = 'onboarding_topic_liveScreenings';
  static const topicYouthFootball = 'onboarding_topic_youthFootball';

  static const allTopics = [
    topicNews,
    topicMatchUpdates,
    topicTransfers,
    topicTactics,
    topicFanDiscussions,
    topicStadiums,
    topicLiveScreenings,
    topicYouthFootball,
  ];

  // Watch preference screen
  static const watchTitle = 'onboarding_watch_title';
  static const watchSubtitle = 'onboarding_watch_subtitle';
  static const watchCafesTitle = 'onboarding_watch_cafes_title';
  static const watchCafesSubtitle = 'onboarding_watch_cafes_subtitle';
  static const watchLoungesTitle = 'onboarding_watch_lounges_title';
  static const watchLoungesSubtitle = 'onboarding_watch_lounges_subtitle';
  static const watchPublicTitle = 'onboarding_watch_public_title';
  static const watchPublicSubtitle = 'onboarding_watch_public_subtitle';
  static const watchHomeTitle = 'onboarding_watch_home_title';
  static const watchHomeSubtitle = 'onboarding_watch_home_subtitle';
  static const saveAndContinueButton = 'onboarding_watch_saveAndContinue';
  static const skipForNowButton = 'onboarding_watch_skipForNow';

  // All set screen
  static const allSetTitle = 'onboarding_allSet_title';
  static const allSetSubtitle = 'onboarding_allSet_subtitle';
  static const goToHomeButton = 'onboarding_allSet_goToHome';
}
