import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login & Signup'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Login'),
                Tab(text: 'Signup'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              LoginCard(),
              SignupCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                  // For demonstration purposes, show a snackbar indicating login success
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Logged in successfully!'),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Full Name'),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle signup logic here
                  // For demonstration purposes, show a snackbar indicating signup success
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Signed up successfully!'),
                    ),
                  );
                  // After signup, you can automatically log in the user
                  // For demonstration purposes, also show a snackbar indicating login success
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Logged in successfully!'),
                    ),
                  );
                },
                child: const Text('Signup'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
