import 'package:flutter/material.dart';
import 'package:regra_de_tres_2023/custom_text_field.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _controllerA = TextEditingController();
  final _controllerB = TextEditingController();
  final _controllerC = TextEditingController();

  late double a;
  late double b;
  late double c;
  String x = 'Está para X';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Regra de Três',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Calcule com a regra de três!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: const Text('A'),
                            isDense: true,
                            labelStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          controller: _controllerA,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: const Text('Está para B'),
                            isDense: true,
                            labelStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          controller: _controllerB,
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Assim como',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 200,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: const Text('C'),
                            isDense: true,
                            labelStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          controller: _controllerC,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(x),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a = double.parse(_controllerA.text);
                      b = double.parse(_controllerB.text);
                      c = double.parse(_controllerC.text);
                      x = ((b * c) / a).toString();
                      print(a);
                      //a = _controllerA as double?;
                      //b = _controllerB as double?;
                      //c = _controllerC as double?;
                      //x = ((b! * c!) / a!).toString();
                    });
                  },
                  child: const Text('Calcular'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
