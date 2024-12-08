import 'package:flutter/material.dart';
import 'package:imag/Tasks/ProviderCalculator/Providerscreen.dart';
import 'package:imag/Tasks/ProviderCalculator/providerdata.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CalculatorModel()),
      ],
      child: ProviderCalculator(),
      builder: (context, child) => ProviderScreen(),
    ),
  );
}

class ProviderCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorModel(),
      child: ProviderScreen(),
    );
  }
}
