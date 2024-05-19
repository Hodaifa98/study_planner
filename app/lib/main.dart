import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
		double screenWidth = MediaQuery.of(context).size.width;
		return Scaffold(
			appBar: null,
			/*body: Center(
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
			)*/
			body: DecoratedBox(
				decoration: const BoxDecoration(
					image: DecorationImage(
						image: AssetImage('assets/images/background.jpg'),
						fit: BoxFit.cover
					)
				),
				child: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Image(
								image: const AssetImage('assets/images/logo.png'),
								width: screenWidth * 0.18
							),
							const SizedBox(height: 10.0),
							const Text(
								'StudyPlanner',
								style: TextStyle (
									fontFamily: 'Roboto',
									fontWeight: FontWeight.bold,
									fontSize: 35.0
								)
							),
						],
		  			),
				),
			)
		);
  	}
}
