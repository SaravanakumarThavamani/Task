import 'package:flutter/material.dart';
import 'package:imag/Tasks/ProviderCalculator/providerdata.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculatorModel = Provider.of<CalculatorModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Calculator'),
      ),
      body: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            childAspectRatio: 1,
            mainAxisSpacing: 1,
            children: [
              ElevatedButton(
                onPressed: () => calculatorModel.click('C'),
                child: Text(
                  'C',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white30,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('%'),
                child: Text(
                  '%',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white38,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('DEL'),
                child: Text(
                  'DEL',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white30,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('÷'),
                child: Text(
                  '÷',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('7'),
                child: Text(
                  '7',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('8'),
                child: Text(
                  '8',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('9'),
                child: Text(
                  '9',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('*'),
                child: Text(
                  'x',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('4'),
                child: Text(
                  '4',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('5'),
                child: Text(
                  '5',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('6'),
                child: Text(
                  '6',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('-'),
                child: Text(
                  '-',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('1'),
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('2'),
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('3'),
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('+'),
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('.'),
                child: Text(
                  '.',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('0'),
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('0.0'),
                child: Text(
                  '0.0',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () => calculatorModel.click('='),
                child: Text(
                  '=',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xeb101fef)),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  calculatorModel.intival,
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
