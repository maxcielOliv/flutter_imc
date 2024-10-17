import 'package:flutter/material.dart';
import 'package:flutter_imc/src/widgets/height.dart';
import 'package:flutter_imc/src/widgets/imc.dart';
import 'package:flutter_imc/src/controller/icm_controller.dart';
import 'package:flutter_imc/src/widgets/info.dart';
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
    final weigthController = TextEditingController();
    final heightController = TextEditingController();
    double weightNew;
    double heightNew;
    const separator = SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child:
                Imc(value: 'Seu IMC é: ${controler.total.toStringAsFixed(2)}'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.5,
            child: Weigth(
              weigth: weigthController,
            ),
          ),
          separator,
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.5,
            child: Height(height: heightController),
          ),
          separator,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    weightNew = double.parse(weigthController.text);
                    heightNew = double.parse(heightController.text);
                    controler.sum(weightNew, heightNew);
                  },
                  child: const Icon(
                    Icons.check,
                  ),
                ),
                separator,
                controler.total > 0
                    ? Info(text: controler.information())
                    : Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
