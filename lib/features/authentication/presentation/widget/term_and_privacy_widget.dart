import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:flutter/material.dart';

Widget termAndPrivacy(BuildContext context) => AppRichTextBuilder(context)
    .add("auth_termAndPrivacy_agreeText".localized())
    .space()
    .link("auth_termAndPrivacy_termTitle".localized(), onTap: () {})
    .space()
    .add("global_and".localized())
    .space()
    .link("auth_termAndPrivacy_privacyTitle".localized(), onTap: () {})
    .build(
      textAlign: TextAlign.center,
      baseStyle: AppTextStyle.textBody(13, textColor: AppColors.textSubtle),
    );
