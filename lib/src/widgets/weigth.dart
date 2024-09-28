import 'package:flutter/material.dart';

class Weigth extends StatelessWidget {
  final TextEditingController weigth;
  const Weigth({super.key, required this.weigth});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: weigth,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Theme.of(context).primaryColor,
        labelStyle: TextStyle(
            color: Theme.of(context).primaryColor, fontStyle: FontStyle.normal),
        labelText: 'Peso Kg',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      onSaved: (value) {
        value = weigth.text;
      },
    );
  }
}
