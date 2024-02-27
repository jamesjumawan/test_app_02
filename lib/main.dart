import 'package:flutter/material.dart';
import 'package:test_app_02/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Counter counter;

  @override
  void initState() {
    super.initState();
    counter = Counter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${counter.count}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter.incrementCount();
                });
              },
              child: const Row(
                children: [Icon(Icons.add), Text("Increment")],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter.decrementCount();
                });
              },
              child: const Row(
                children: [Icon(Icons.remove), Text("Decrement")],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter.reset();
                });
              },
              child: const Row(
                children: [Icon(Icons.replay), Text("Reset")],
              ),
            ),
            // IconButton(
            //   onPressed: () {
            //     setState(() {
            //       counter.incrementCount();
            //     });
            //   },
            //   icon: const Icon(Icons.add),
            // ),
            // IconButton(
            //   onPressed: () {
            //     setState(() {
            //       counter.decrementCount();
            //     });
            //   },
            //   icon: const Icon(Icons.remove),
            // ),
            // IconButton(
            //   onPressed: () {
            //     setState(() {
            //       counter.reset();
            //     });
            //   },
            //   icon: const Icon(Icons.replay),
            // ),
          ],
        ),
      ),
    );
  }
}
