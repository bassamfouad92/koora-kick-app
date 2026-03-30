import 'dart:async';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/navigation_extension.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/common/widgets/page/page_builder_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_cupertino_navigation_bar/super_cupertino_navigation_bar.dart';

typedef KooraKickLayoutBuilder =
    Widget Function(
      BuildContext context,
      List<Widget> children,
      CrossAxisAlignment alignment,
    );

class KooraKickPageBuilder extends ConsumerStatefulWidget {
  KooraKickPageBuilder._();

  KooraKickPageBuilder _set(void Function() action) {
    action();
    return this;
  }

  bool _withAppBar = true;
  bool _withPinnedTitleBar = false;
  bool _isScrollable = false;

  String? _largeTitle;
  String? _pinnedTitle;

  Widget? _title;
  Widget? _subtitle;
  Widget? _content;
  Widget? _rightButton;
  Widget? _bottomContent;
  bool _isCentered = false;

  CrossAxisAlignment _alignment = CrossAxisAlignment.center;
  late Widget Function(BuildContext context) _buildFn;
  KooraKickLayoutBuilder? _customLayoutBuilder;

  Widget Function(BuildContext context, Widget Function(BuildContext) builder)?
  _wrapperBuilder;

  static KooraKickPageBuilder withAppBar() =>
      KooraKickPageBuilder._().._withAppBar = true;

  static KooraKickPageBuilder noAppBar() => KooraKickPageBuilder._().._withAppBar = false;

  static KooraKickPageBuilder withPinnedTitleAppBar({
    required String largeTitle,
    required String pinnedTitle,
  }) => KooraKickPageBuilder._()
    .._withPinnedTitleBar = true
    .._withAppBar = false
    .._largeTitle = largeTitle
    .._pinnedTitle = pinnedTitle;

  KooraKickPageBuilder title(Widget title) => _set(() => _title = title);

  KooraKickPageBuilder subtitle(Widget subtitle) => _set(() => _subtitle = subtitle);

  KooraKickPageBuilder content(Widget content) => _set(() => _content = content);

  KooraKickPageBuilder withBottomContent(Widget bottom) =>
      _set(() => _bottomContent = bottom);

  KooraKickPageBuilder centered() => _set(() => _isCentered = true);

  KooraKickPageBuilder alignTo(CrossAxisAlignment alignment) =>
      _set(() => _alignment = alignment);

  KooraKickPageBuilder scrollable() => _set(() {
    _isScrollable = true;
  });

  KooraKickPageBuilder rightButton(String label, VoidCallback onPressed) {
    _rightButton = AppButton.text(text: label, onPressed: onPressed);
    return this;
  }

  KooraKickPageBuilder withCustomLayout(KooraKickLayoutBuilder builder) =>
      _set(() => _customLayoutBuilder = builder);

  KooraKickPageBuilder listen<T>(
    ProviderBase<T> provider,
    KooraKickListener<T> listener,
  ) {
    _wrapperBuilder = (context, builder) => ListeningWrapper<T>(
      builder: builder,
      provider: provider,
      listener: listener,
    );
    return this;
  }

  @override
  ConsumerState<KooraKickPageBuilder> createState() => _KooraKickPageBuilderState();
}

class _KooraKickPageBuilderState extends ConsumerState<KooraKickPageBuilder>
    with WidgetsBindingObserver {
  final GlobalKey _contentKey = GlobalKey();
  Timer? _scrollDebounce;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _scrollDebounce?.cancel();
    _scrollController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Widget get _backButton => Transform(
        alignment: Alignment.center,
        transform:  _flipForRtl(Directionality.of(context) == TextDirection.rtl),
        child: AppButton.icon(
       AppImage.asset(AppAssets.leftArrow).setStyle(AppImageStyle(color: context.colors.textPrimary)).build(),
      onPressed: () => context.safePop()
    ));

    @override
    void didChangeMetrics() {
      _scrollDebounce?.cancel();
      _scrollDebounce = Timer(
        const Duration(milliseconds: 100),
        _handleMetricsChange,
      );
    }

  double _getTitleHeight(BuildContext context) {
    final wrappedTitle = wrapLargeTitleToFit(
      context,
      widget._largeTitle!,
      context.typo.headingLarge,
    );

    const singleLineHeight = kToolbarHeight; // 56
    const extraLineHeight = 26.0; // Extra for 2nd line

    final isTwoLineTitle = wrappedTitle.contains('\n');
    return isTwoLineTitle
        ? singleLineHeight + extraLineHeight
        : singleLineHeight;
  }

  String wrapLargeTitleToFit(
      BuildContext context,
      String title,
      TextStyle style,
      ) {
    final screenWidth = context.screenWidth;
    const padding = 24; // left + right from SuperLargeTitle default
    final maxWidth = screenWidth - padding;

    final tp = TextPainter(
      text: TextSpan(text: title, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: double.infinity);

    if (tp.width > maxWidth) {
      // Find the midpoint and break near a space
      final mid = (title.length / 2).round();
      final breakIndex = title.lastIndexOf(' ', mid);
      if (breakIndex != -1) {
        return '${title.substring(0, breakIndex)}\n${title.substring(breakIndex + 1)}';
      }
    }
    return title;
  }

  void _handleMetricsChange() {
    final mediaQuery = MediaQuery.of(context);
    final bottomInset = mediaQuery.viewInsets.bottom;
    final screenHeight = mediaQuery.size.height;

    final renderBox =
    _contentKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null || !_scrollController.hasClients) {
      return;
    }

    final contentHeight = renderBox.size.height;

    // Constants
    final appChromeHeight = context.screenHeight * 0.2;
    final double scrollTargetOffset = _getTitleHeight(context) != kToolbarHeight
        ? 84
        : 60.0;
    const scrollAnimDuration = Duration(milliseconds: 250);

    // Calculate available space and overflow
    final availableHeight = screenHeight - bottomInset - appChromeHeight;
    final overflow = contentHeight - availableHeight;
    final currentOffset = _scrollController.offset;

    final shouldScrollUp =
        bottomInset > 0 &&
            overflow > 0 &&
            (currentOffset - scrollTargetOffset).abs() > 10;
    final shouldScrollDown = bottomInset == 0 && currentOffset > 0;

    if (shouldScrollUp) {
      _scrollController.animateTo(
        scrollTargetOffset,
        duration: scrollAnimDuration,
        curve: Curves.easeOut,
      );
    } else if (shouldScrollDown) {
      _scrollController.animateTo(
        0,
        duration: scrollAnimDuration,
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    widget._buildFn = (_) => widget._withPinnedTitleBar
        ? _buildPinnedScaffold(context)
        : _buildRegularScaffold(context);

    return widget._wrapperBuilder.let(
          (builder) => builder(context, widget._buildFn),
      orElse: () => widget._buildFn(context),
    );
  }

  Widget _buildGradientBackground(
      BuildContext context,
      Gradient gradient,
      Widget child,
      ) {
    final gradientHeight = context.screenHeight / 4.2;

    return [
      DecoratedBox(
        decoration: BoxDecoration(gradient: gradient),
      ).positioned(top: 0, left: 0, right: 0, height: gradientHeight),
      DecoratedBox(
        decoration: BoxDecoration(color: context.colors.surface),
      ).positioned(top: gradientHeight, left: 0, right: 0, bottom: 0),
      child,
    ].stacked();
  }

  Widget _buildPinnedScaffold(BuildContext context) {
    final wrappedTitle = wrapLargeTitleToFit(
      context,
      widget._largeTitle!,
      context.typo.headingLarge,
    );

    final contentWidgets = [
      [
        widget._subtitle.let(
              (subTitle) => subTitle,
          orElse: () => const SizedBox.shrink(),
        ),
        widget._content.let(
              (content) => content,
          orElse: () => const SizedBox.shrink(),
        ),
      ]
          .column(
        crossAxisAlignment: widget._alignment,
        mainAxisAlignment: widget._isCentered
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
      )
          .withPadding(EdgeInsets.only(bottom: context.dimensions.large))
          .let(
            (padded) => widget._isCentered ? Expanded(child: padded) : padded,
        orElse: () => const SizedBox.shrink(),
      ),

      widget._bottomContent.let(
            (bottomContent) => [bottomContent]
            .column(crossAxisAlignment: CrossAxisAlignment.center)
            .withPadding(EdgeInsets.only(bottom: context.dimensions.large)),
        orElse: () => const SizedBox.shrink(),
      ),
    ];

    final contentColumn = contentWidgets
        .column(
      crossAxisAlignment: widget._alignment,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    )
        .withHorizontalPadding(context.dimensions.medium);

    final superScaffold = SuperScaffold(
      scrollController: _scrollController,
      appBar: SuperAppBar(
        leading: _backButton,
        previousPageTitle: '',
        backgroundColor: Colors.transparent,
        title: Text(
          widget._pinnedTitle!,
          style: context.typo.bodyMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        largeTitle: SuperLargeTitle(
          enabled: true,
          largeTitle: wrappedTitle,
          textStyle: context.typo.headingLarge,
          height: _getTitleHeight(context),
        ),
        searchBar: SuperSearchBar(enabled: false),
        bottom: SuperAppBarBottom(enabled: false),
        actions: widget._rightButton?.letOrNull(
              (btn) => btn.withHorizontalPadding(context.dimensions.medium),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              key: _contentKey,
              padding: EdgeInsets.symmetric(
                vertical: context.dimensions.mediumH,
              ),
              child: contentColumn,
            ),
          ),
        ],
      ),
    );

    return _applyBackground(context, superScaffold);
  }

  Widget _buildRegularScaffold(BuildContext context) {

    final contentWidgets = [
      [
        if (!widget._withAppBar)
          SizedBox(height: context.dimensions.xLargeH),
        widget._title.let(
              (title) => title,
          orElse: () => const SizedBox.shrink(),
        ),
        widget._subtitle.let(
              (subtitle) => subtitle,
          orElse: () => const SizedBox.shrink(),
        ),
        widget._content.let(
              (content) => content.withPadding(
            EdgeInsets.only(top: context.dimensions.xLargeH),
          ),
          orElse: () => const SizedBox.shrink(),
        ),
      ]
          .column(
        crossAxisAlignment: widget._alignment,
        mainAxisAlignment: widget._isCentered
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
      )
          .let(
            (col) => widget._isCentered
            ? Expanded(child: col)
            : Align(alignment: Alignment.topCenter, child: col),
        orElse: () => const SizedBox.shrink(),
      ),

      widget._bottomContent.let(
            (bottomContent) => [bottomContent].column().withPadding(
          EdgeInsets.only(bottom: context.dimensions.mediumH),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    ];

    Widget contentColumn = const SizedBox.shrink();

    widget._customLayoutBuilder.let(
          (customLayout) => contentColumn = customLayout(
        context,
        contentWidgets,
        widget._alignment,
      ),
      orElse: () {
        contentColumn = contentWidgets
            .column(
          crossAxisAlignment: widget._alignment,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        )
            .withHorizontalPadding(context.dimensions.medium);
      },
    );

    final scaffold = Scaffold(
      backgroundColor: Colors.transparent,
      appBar: widget._withAppBar
          ? PreferredSize(
        preferredSize: Size.fromHeight(context.dimensions.appBarSize),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: _backButton,
          actions: widget._rightButton?.letOrNull(
                (btn) => [
              btn.withHorizontalPadding(context.dimensions.medium),
            ],
          ),
        ),
      )
          : null,
      body: widget._isScrollable
          ? CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: SafeArea(key: _contentKey, child: contentColumn),
          ),
        ],
      )
          : SafeArea(key: _contentKey, child: contentColumn),
    );

    return _applyBackground(context, scaffold);
  }

  Matrix4 _flipForRtl(bool isRtl) =>
      isRtl ? (Matrix4.identity()..scale(-1.0, 1.0)) : Matrix4.identity();

  Widget _applyBackground(BuildContext context, Widget scaffoldChild) =>
      context.colors.backgrounds.scaffold.when(
        solid: (color) => Scaffold(backgroundColor: color, body: scaffoldChild),
        gradient: (gradient) => _buildGradientBackground(
          context,
          gradient,
          Scaffold(backgroundColor: Colors.transparent, body: scaffoldChild),
        ),
        appImage: (bgImage) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImage.source),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: scaffoldChild,
          ),
        ),
      );
}

