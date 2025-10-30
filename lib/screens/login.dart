import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String email, password;

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(28),
          children: [
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
              child: Text('Login'),
              onPressed: () {
                // TODO: call AuthService login
                if (_formKey.currentState.validate()) {
                  Navigator.pushReplacementNamed(context, '/dashboard');
                }
              },
            ),
            TextButton(
              child: Text('Create Account'),
              onPressed: () => Navigator.pushNamed(context, '/register'),
            )
          ],
        ),
      ),
    );
  }
}

