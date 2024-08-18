import 'package:easy_design_system/easy_design_system.dart';
import 'package:flutter/material.dart';

RoundedRectangleBorder comicRoundedRectangleBorder(BuildContext context,
        [double round = comicBorderRadius]) =>
    RoundedRectangleBorder(
      side: BorderSide(
        width: comicBorderWidth,
        color: Theme.of(context).colorScheme.outline,
      ),
      borderRadius: BorderRadius.circular(round),
    );

Color comicContainerBackgroundColor(BuildContext context) =>
    Theme.of(context).colorScheme.surface;
