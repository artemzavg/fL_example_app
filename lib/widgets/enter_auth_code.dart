import 'package:fl_example/screens/main_screen.dart';
import 'package:flutter/material.dart';

class EnterAuthCodeForm extends StatefulWidget {
  const EnterAuthCodeForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return EnterAuthCodeFormState();
  }
}

class EnterAuthCodeFormState extends State<EnterAuthCodeForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Text('Введите код'),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите номер телефона';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainScreen())
                  );
                }
              },
              child: const Text('Войти'),
            ),
          )
        ],
      ),
    );
  }
}