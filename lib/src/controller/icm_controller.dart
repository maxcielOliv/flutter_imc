import 'package:flutter/material.dart';

class ImcController extends ChangeNotifier {
  double total = 0.0;
  Widget text = Text(
    '',
  );
  final TextStyle _style =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  sum(double weight, double height) {
    if (total == 0) {
      total = 0.0;
    }

    total = weight / (height * height);

    notifyListeners();
  }

  Widget information() {
    if (total < 16.9) {
      text = Text(
        'Muito Abaixo do peso',
        style: _style,
      );
    } else if (total < 17 || total < 18.4) {
      text = Text('Abaixo do peso', style: _style);
    } else if (total < 18.5 || total < 24.9) {
      text = Text('Peso normal', style: _style);
    } else if (total < 25 || total < 29.9) {
      text = Text(
        'Acima do peso',
        style: _style,
      );
    } else if (total < 30 || total < 34.9) {
      text = Text('Obesidade grau I', style: _style);
    } else if (total < 35 || total < 40) {
      text = Text('Obesidade grau II', style: _style);
    } else if (total > 40) {
      text = Text('Obesidade grau III', style: _style);
    }
    return text;
  }
}
