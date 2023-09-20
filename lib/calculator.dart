import 'package:eliascalc/colors.dart';
import 'package:eliascalc/form_field.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  double notafinal = 0.00;

  calcularMedia() {
    double sum = 0.00;
    for (var controller in controllers) {
      double grade = double.tryParse(controller.text) ?? 0;
      sum += grade;
    }
    double calculateAverage = sum / controllers.length;

    setState(() {
      notafinal = calculateAverage;
    });

    return;
  }

  @override
  void dispose() {
    controllers[0].dispose();
    controllers[1].dispose();
    controllers[2].dispose();
    controllers[3].dispose();
    controllers[4].dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Nome: Daniel Vieira Saraiva de Souza",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                "RA: 1431432312007",
                style: TextStyle(
                  color: Color(primary),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Média: $notafinal",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(primarydark),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.all(16),
                ),
              ),
              onPressed: () {
                calcularMedia();
              },
              child: Text(
                "Calcular Média",
                style: TextStyle(
                  color: Color(darkBg),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(darkBg),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IntField(
                    title: "Atividade 1",
                    controler: controllers[0],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IntField(
                    title: "Atividade 2",
                    controler: controllers[1],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IntField(
                    title: "Atividade 3",
                    controler: controllers[2],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IntField(
                    title: "Atividade 4",
                    controler: controllers[3],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IntField(
                    title: "Prova",
                    controler: controllers[4],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
