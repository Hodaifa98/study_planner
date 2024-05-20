import 'package:flutter/material.dart';
import 'package:study_planer/constants/colors.dart';

void main() {
	runApp(const Register());
}

class Register extends StatelessWidget {
	const Register({super.key});

	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			theme: ThemeData(
				colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
				useMaterial3: true,
			),
			home: const RegisterPage(),
		);
	}
}

class RegisterPage extends StatefulWidget {
	const RegisterPage({super.key});
	@override
	State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			appBar: null,
			body: Stack(
				children: [
					DecoratedBox(
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
									const Text(
										'Type in your\ninformation to\nbegin',
										style: TextStyle (
											fontFamily: 'Roboto',
											fontSize: 35.0,
											fontWeight: FontWeight.w700
										),
										textAlign: TextAlign.center,
									),
									const SizedBox(height: 40.0),
									const Text(
										'Full Name',
										style: TextStyle (
											fontFamily: 'Roboto',
											fontSize: 18.0,
											fontWeight: FontWeight.w700
										),
										textAlign: TextAlign.center,
									),
									SizedBox(
										width: 300,
										child: TextFormField(
											decoration: InputDecoration(
												contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
												border: OutlineInputBorder(
													borderRadius: BorderRadius.circular(20),
												),
											),
										)
									),
									const SizedBox(height: 40.0),
									const Text(
										'Email',
										style: TextStyle (
											fontFamily: 'Roboto',
											fontSize: 18.0,
											fontWeight: FontWeight.w700
										),
										textAlign: TextAlign.center,
									),
									SizedBox(
										width: 300,
										child: TextFormField(
											decoration: InputDecoration(
												contentPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 20.0),
												border: OutlineInputBorder(
													borderRadius: BorderRadius.circular(20),
												),
											),
										)
									),
								],
							),
						),
					),
					Positioned(
						bottom: 20.0,
						left: 0.0,
						right: 0.0,
						child: Center(
							child: ElevatedButton(
								onPressed: () {
								},
								style: ButtonStyle(
									backgroundColor: MaterialStateProperty.resolveWith((states) => darkColor),
									padding: MaterialStateProperty.resolveWith((states) => 
										const EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0)
									),
								),
								child: const Text(
									'Next',
									style: TextStyle (
										fontFamily: 'Roboto',
										fontSize: 18.0,
										color: Colors.white,
									)
								),
							),
						),
					),
				],
			)
		);
	} 	
}