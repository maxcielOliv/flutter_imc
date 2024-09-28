import 'package:flutter/material.dart';
import 'package:flutter_imc/src/widgets/height.dart';
import 'package:flutter_imc/src/widgets/imc.dart';
import 'package:flutter_imc/src/controller/icm_controller.dart';
import 'package:flutter_imc/src/widgets/weigth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controler = ImcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controler.addListener(_listener);
  }

  @override
  void dispose() {
    controler.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final weigth = TextEditingController();
    final height = TextEditingController();
    double weightNew;
    double heightNew;
    const separator = SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('IMC'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Imc(value: 'Seu IMC é: ${controler.total}'),
          ),
          Weigth(
            weigth: weigth,
          ),
          separator,
          Height(height: height),
          separator,
          FloatingActionButton(
            onPressed: () {
              weightNew = double.parse(weigth.text);
              heightNew = double.parse(height.text);
              controler.sum(weightNew, heightNew);
            },
            child: const Icon(
              Icons.check,
            ),
          ),
        ],
      ),
    );
  }
}
