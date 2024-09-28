import 'package:flutter/material.dart';

class Imc extends StatelessWidget {
  final String value;
  const Imc({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                textAlign: TextAlign.center,
                value,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).secondaryHeaderColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
