import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({ Key? key }) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'MediGame',
			home: Scaffold(
				appBar: AppBar(title: const Text('MediGame')),
				body: const MediGame(),
			)
		);
	}
}


//Welcome Page
class MediGame extends StatelessWidget {
	const MediGame({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Center(
			child: Column(
				mainAxisSize: MainAxisSize.min,
				children: <Widget>[
					const Text(
						'Welcome to MediGame'
					),
					const SizedBox(height: 30),
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {
							Navigator.push(
								context,
								MaterialPageRoute(builder: (context) => const SignIn())
							);					
						},
						child: const Text('Sign In'),
					),
					const SizedBox(height: 30),
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {
							Navigator.push(
								context,
								MaterialPageRoute(builder: (context) => const SignUp())
							);
						},
						child: const Text('Sign Up'),
					)
				]
			)
		);
	}
}

//Sign In Page
//Back Button, Username, Password
class SignIn extends StatelessWidget {
	const SignIn({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			appBar: AppBar(title: const Text('Enter Your Details')),
			body: Column(
				children: <Widget>[
					TextFormField(
						decoration: const InputDecoration(
							border: UnderlineInputBorder(),
							labelText: 'Username or Email',
						)
					),
					TextFormField(
						obscureText: true,
						decoration: const InputDecoration(							
							border: UnderlineInputBorder(),
							labelText: 'Password',
						)
					),
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {
							Navigator.push(
								context,
								MaterialPageRoute(builder: (context) => const Home())
							);
						},
						child: const Text('Login'),
					)
				]
			)
		);
	}
}

//Sign In Page
//Back Button, Username, Password
class SignUp extends StatelessWidget {
	const SignUp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			appBar: AppBar(title: const Text('Create an Account')),
			body: Column(
				children: <Widget>[
					TextFormField(
						decoration: const InputDecoration(
							border: UnderlineInputBorder(),
							labelText: 'Username',
						)
					),
					TextFormField(
						decoration: const InputDecoration(
							border: UnderlineInputBorder(),
							labelText: 'Email',
						)
					),
					TextFormField(
						obscureText: true,
						decoration: const InputDecoration(							
							border: UnderlineInputBorder(),
							labelText: 'Password',
						)
					),
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {
							Navigator.push(
								context,
								MaterialPageRoute(builder: (context) => const Home())
							);
						},
						child: const Text('Proceed'),
					)
				]
			)
		);
	}
}

//Home Page
//Search, Settings, Welcome Text, Account
class Home extends StatelessWidget {
	const Home({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.white,
			appBar: AppBar(title: const Text('Select an Activity')),
			body: GridView.count(
				crossAxisCount: 2,
				children: [
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {},
						child: const Text('X-Ray'),
					),
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {},
						child: const Text('Vaccination'),
					),
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {},
						child: const Text('Check Up'),
					),
					TextButton(
						style: TextButton.styleFrom(
						textStyle: const TextStyle(fontSize: 20),
						),
						onPressed: () {},
						child: const Text('Bandage'),
					),
				],
			)
		);
	}
}