import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String name, email, password;

    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(28),
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Full Name'),
              onChanged: (val) => name = val,
              validator: (val) => val.isEmpty ? "Enter name" : null,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (val) => email = val,
              validator: (val) => val.isEmpty ? "Enter email" : null,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (val) => password = val,
              validator: (val) => val.isEmpty ? "Enter password" : null,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Register'),
              onPressed: () {
                // TODO: call AuthService register
                if (_formKey.currentState.validate()) {
                  Navigator.pushReplacementNamed(context, '/dashboard');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

