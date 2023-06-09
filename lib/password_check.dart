import 'package:flutter/material.dart';


class PasswordChecker extends StatefulWidget {
  const PasswordChecker({Key? key}) : super(key: key);

  @override
  State<PasswordChecker> createState() => _PasswordCheckerState();
}

class _PasswordCheckerState extends State<PasswordChecker> {
  late String _password;
  double _strength = 0;

  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  String _displayText = 'Please enter a password';

  void _checkPassword(String value) {
    _password = value.trim();

    if (_password.isEmpty) {
      setState(() {
        _strength = 0;
        _displayText = 'Please enter you password';
      });
    } else if (_password.length < 6) {
      setState(() {
        _strength = 1 / 4;
        _displayText = 'Your password is too short';
      });
    } else if (_password.length < 8) {
      setState(() {
        _strength = 2 / 4;
        _displayText = 'Your password is acceptable but not strong';
      });
    } else {
      if (!letterReg.hasMatch(_password) || !numReg.hasMatch(_password)) {
        setState(() {
          // Password length >= 8
          // But doesn't contain both letter and digit characters
          _strength = 3 / 4;
          _displayText = 'Your password is strong';
        });
      } else {
        // Password length >= 8
        // Password contains both letter and digit characters
        setState(() {
          _strength = 1;
          _displayText = 'Your password is great';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Flutter Password Strength Checker Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => _checkPassword(value),
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.teal),
                  ),),
              ),
              const SizedBox(
                height: 30,
              ),
              // The strength indicator bar
              LinearProgressIndicator(
                value: _strength,
                backgroundColor: Colors.grey[300],
                color: _strength <= 1 / 4
                    ? Colors.red
                    : _strength == 2 / 4
                    ? Colors.yellow
                    : _strength == 3 / 4
                    ? Colors.blue
                    : Colors.green,
                minHeight: 15,
              ),
              const SizedBox(
                height: 20,
              ),

              // The message about the strength of the entered password
              Text(
                _displayText,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              // This button will be enabled if the password strength is medium or beyond
              ElevatedButton(
                  onPressed: _strength < 1 / 2 ? null : () {},
                  child: const Text('Continue'))
            ],
          ),
        ));
  }
}