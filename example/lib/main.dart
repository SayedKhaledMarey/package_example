import 'package:alert_dialog_example_s/alert_dialog_example_s.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Alert Dialog Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Click on the button to show alert dialog'),
              const SizedBox(height: 10),
              CircleAvatar(
                radius: 30,
                child: IconButton(onPressed: ()async{
                  await CustomAlertBoxS.showCustomAlertBox(
                      context: context,
                      willDisplayWidget: const Text('My custom alert box'));
                }, icon: const Icon(Icons.error)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
