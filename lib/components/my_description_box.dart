import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});
  @override
  Widget build(BuildContext context) {
    var primaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var secondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '/Npr 120',
                style: primaryTextStyle,
              ),
              Text(
                'Delivery Fee',
                style: secondaryTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '15-30 min',
                style: primaryTextStyle,
              ),
              Text(
                'Delivery Time',
                style: secondaryTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
