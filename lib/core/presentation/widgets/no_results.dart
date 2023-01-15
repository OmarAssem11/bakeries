import 'package:bakery/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class NoResults extends StatelessWidget {
  const NoResults(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.noOrders.path,
            height: MediaQuery.of(context).size.height * 0.35,
            fit: BoxFit.cover,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
