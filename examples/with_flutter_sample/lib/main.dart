import 'package:flutter/material.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';
import 'package:with_flutter_sample/holy-grail-layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'sans-serif',
        primarySwatch: Colors.orange,
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/holy-grail-layout': (context) => const HolyGrailLayoutScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // [USAGE] Responsive values in Flutter
        color: responsive.value({
          Breakpoints.xs: Colors.red.shade200,
          Breakpoints.sm: Colors.yellow.shade200,
          Breakpoints.md: Colors.green.shade200,
          Breakpoints.lg: Colors.blue.shade200,
          Breakpoints.xl: Colors.purple.shade200,
        }),
        child: Center(
          // [USAGE] Responsive Row/Column in Flutter
          child: GridItem(
            as: responsive.value({
              Breakpoints.xs: Column,
              Breakpoints.md: Row,
            }),
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Button clicks:'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
