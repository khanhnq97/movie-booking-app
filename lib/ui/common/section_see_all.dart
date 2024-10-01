import 'package:flutter/material.dart';

class SectionSeeAll extends StatelessWidget {
  const SectionSeeAll({
    super.key,
    required this.title,
    this.onTapSeeAll,
  });

  final String title;
  final VoidCallback? onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        TextButton.icon(
          onPressed: onTapSeeAll,
          label: const Text(
            'See all',
            style: TextStyle(color: Colors.amber),
          ),
          icon: const Icon(
            Icons.chevron_right,
            color: Colors.amber,
          ),
          iconAlignment: IconAlignment.end,
        ),
      ],
    );
  }
}
