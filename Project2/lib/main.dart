import 'package:flutter/material.dart';
import 'package:imag/Tasks/Imageupload/image.dart';

import 'package:imag/Tasks/ProviderCalculator/home.dart';
import 'package:provider/provider.dart';
import 'Tasks/Getxcalculator/screen.dart';
import 'Tasks/ProviderCalculator/Providerscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Navigate()),
      ],
      child: const Home(),
    ),
  );
}

class Navigate with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updateindex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Consumer<Navigate>(
            builder: (context, Navigates, child) {
              switch (Navigates.currentIndex) {
                case 0:
                  return ProviderCalculator();
                case 1:
                  return CalculatorScreen();
                case 2:
                  return ImageUpload();
                default:
                  return Container(); // handle default case
              }
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: context.watch<Navigate>().currentIndex,
            onTap: (int index) {
              context.read<Navigate>().updateindex(index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Provider'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calculate), label: 'Getx'),
              BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Upload'),
            ],
          ),
        ),
      ),
    );
  }
}
