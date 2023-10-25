import 'package:flutter/material.dart';

class DietSwitch extends StatelessWidget {
  const DietSwitch(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.isDietSet,
      required this.onSwitchCheck});

  final String title;
  final String subtitle;
  final bool isDietSet;
  final Function(bool isCkecked) onSwitchCheck;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: isDietSet,
      onChanged: onSwitchCheck,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
