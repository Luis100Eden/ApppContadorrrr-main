import 'package:flutter/material.dart';
import 'package:guillermo_grellas/presentation/componentes/CustomButtom.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int variable = 0;
  String txt = "Clicks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text('Counter', style: TextStyle(fontSize: 60)))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$variable',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(variable > 1 ? "Clicks" : "Click",
                  style: const TextStyle(fontSize: 60))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  variable++; //Icons.plus_one
                });
              },
            ),
            const SizedBox(height: 18),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (variable > 0) {
                    variable--; //Icons.exposure_minus_1
                  }
                });
              },
            ),
            const SizedBox(height: 18),
            CustomButton(
              icon: Icons.exposure_zero,
              onPressed: () {
                setState(() {
                  variable = 0; //Icons.exposure_zero
                });
              },
            )
          ],
        ));
  }
}
