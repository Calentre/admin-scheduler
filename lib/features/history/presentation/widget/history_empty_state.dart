import 'package:calentre/config/extensions/spacing.dart';
import 'package:calentre/config/theme/colors.dart';
import 'package:calentre/shared/widgets/border_card.dart';
import 'package:calentre/utils/icon_framer.dart';
import 'package:flutter/material.dart';

class HistoryEmptyState extends StatelessWidget {
  const HistoryEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: BorderCard(
        child: Column(
          children: [
            iconFramer(imageTitle: "history-placeholder.svg", size: 300),
            const SizedBox().y20(),
            Text(
              "You have no history",
              style: TextStyle(color: AppColors.grey.s300),
              textAlign: TextAlign.center,
            ),
            const SizedBox().y10(),
          ],
        ),
      ),
    );
  }
}
