import 'package:flutter/material.dart';
import 'package:meals/models/ingredient.dart';

class IngredientItem extends StatelessWidget {
  const IngredientItem({
    super.key,
    required this.ingredient,
    required this.quantity,
  });

  final Ingredient ingredient;
  final int quantity;

  String get _convertedIngredient {
    String amount = '';
    String unit = '';
    if (ingredient.amount != null) {
      num newAmount = quantity * ingredient.amount!;
      amount = '${newAmount.toString()} ';
    }
    if (ingredient.unit != null) {
      unit = '${ingredient.unit} ';
    }
    return '$amount$unit${ingredient.name}';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _convertedIngredient,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ],
    );
  }
}
