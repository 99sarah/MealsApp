import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key, required this.onChangeQuantity});

  final void Function(int newQuantity) onChangeQuantity;

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _quantity = 1;

  void _increaseQuantity() {
    setState(() {
      _quantity++;
    });
    widget.onChangeQuantity(_quantity);
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
    widget.onChangeQuantity(_quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          style: BorderStyle.solid,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _decreaseQuantity,
              icon: const Icon(Icons.remove),
            ),
            Text(
              _quantity.toString(),
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            IconButton(
              onPressed: _increaseQuantity,
              icon: const Icon(Icons.add),
            ),
          ]),
    );
  }
}
