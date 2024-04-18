import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          background: Color.fromARGB(255, 77, 77, 77),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white, 
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 500.0,left: 550.0),
              child: Text(
                '0',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFEFEFE),
                ),
              ),
            ),
          ),
          // Filas
          Row(
            children: [
              // Columna 1
              Expanded(
                child: Column(
                  children: [
                    _RoundButton('7'),
                    _RoundButton('4'),
                    _RoundButton('1'),
                    _RoundButton('C'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    _RoundButton('8'),
                    _RoundButton('5'),
                    _RoundButton('2'),
                    _RoundButton('0'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    _RoundButton('9'),
                    _RoundButton('6'),
                    _RoundButton('3'),
                    _RoundButton('='),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    _RoundButton('/'),
                    _RoundButton('X'),
                    _RoundButton('-'),
                    _RoundButton('+'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _RoundButton(String text) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        elevation: 10.0,
        shadowColor: Color.fromARGB(255, 240, 149, 13),
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromARGB(255, 230, 230, 230),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 24, 23, 23),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
