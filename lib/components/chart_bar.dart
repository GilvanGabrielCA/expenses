import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar(
      {Key? key,
      required this.label,
      required this.value,
      required this.percentage})
      : super(key: key);

  final String label;
  final double value;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
          child: FittedBox(
            child: Text('R\$${value.toStringAsFixed(2)}'),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 60,
          width: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: const Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              FractionallySizedBox(
                heightFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(label),
      ],
    );
  }
}
