import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Home'),
    );
  }
}

class HomePage extends StatefulWidget {
	const HomePage({super.key, required this.title});
	final String title;
	@override
	State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*void _incrementCounter() {
    // Update app state.
    setState(() {});
  }*/

	// Rebuild app.
  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
        	appBar: null,
        	body: Center(
          		child: Column(
            		mainAxisAlignment: MainAxisAlignment.center,
            		children: <Widget>[
						Text(
							'Welcome',
							style: Theme.of(context).textTheme.headlineMedium,
						),
						const Text(
							'to',
						),
						Text(
							'StudyPlanner',
							style: Theme.of(context).textTheme.bodyLarge,
					),
            	],
          ),
        ));
  	}
}
