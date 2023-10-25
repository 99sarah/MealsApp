import 'package:flutter/material.dart';
import 'package:meals/widgets/diet_switch.dart';
import 'package:meals/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          DietSwitch(
            title: 'Gluten-free',
            subtitle: 'Only include gluten-free meals.',
            isDietSet: activeFilters[Filter.glutenFree]!,
            onSwitchCheck: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
          ),
          DietSwitch(
            title: 'Lactose-free',
            subtitle: 'Only include lactose-free meals.',
            isDietSet: activeFilters[Filter.lactoseFree]!,
            onSwitchCheck: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
          ),
          DietSwitch(
            title: 'Vegetarian',
            subtitle: 'Only include vegetarian meals.',
            isDietSet: activeFilters[Filter.vegetarian]!,
            onSwitchCheck: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
          ),
          DietSwitch(
            title: 'Vegan',
            subtitle: 'Only include vegan meals.',
            isDietSet: activeFilters[Filter.vegan]!,
            onSwitchCheck: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
          ),
        ],
      ),
    );
  }
}
