import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imag/Tasks/Getxcalculator/data.dart';

class CalculatorScreen extends StatelessWidget {
  final CalculatorController _controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Calculator'),
      ),
      body: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 1,
            childAspectRatio: 1,
            children: [
              ElevatedButton(
                onPressed: () => _controller.click('C'),
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.white24),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('%'),
                child: Text(
                  '%',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.white30),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('DEL'),
                child: Text(
                  'DEL',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.white24),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('÷'),
                child: Text(
                  '÷',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('7'),
                child: Text(
                  '7',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('8'),
                child: Text(
                  '8',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('9'),
                child: Text(
                  '9',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('*'),
                child: Text(
                  'X',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('4'),
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('5'),
                child: Text(
                  '5',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('6'),
                child: Text(
                  '6',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('-'),
                child: Text(
                  '-',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('1'),
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('2'),
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('3'),
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('+'),
                child: Text(
                  '+',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('.'),
                child: Text(
                  '.',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('0'),
                child: Text(
                  '0',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('00'),
                child: Text(
                  '00',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300),
              ),
              ElevatedButton(
                onPressed: () => _controller.click('='),
                child: Text(
                  '=',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xde1d288c)),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Obx(() => Text(
                      _controller.intival,
                      style: TextStyle(fontSize: 40),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
