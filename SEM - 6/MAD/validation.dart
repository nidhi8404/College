import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation Example'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _numericController = TextEditingController(); // Add this line

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your email';
                }
                if (!value!.contains('@')) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your password';
                }
                if (value!.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please re-enter your password';
                }
                if (value != _passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _numericController,
              decoration: InputDecoration(labelText: 'Numeric Input'),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter a number';
                }
                if (double.tryParse(value!) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // If the form is valid, submit it
                  _submitForm();
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
    String numericInput = _numericController.text;

    // Here, you can do whatever you want with the form data
    // For now, let's just print it
    print('Name: $name');
    print('Email: $email');
    print('Password: $password');
    print('Confirm Password: $confirmPassword');
    print('Numeric Input: $numericInput');
  }
}
