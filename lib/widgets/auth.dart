import 'package:fl_example/screens/enter_auth_code.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return AuthFormState();
  }
}

class AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.black26,
                width: 2
              ),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15
                )
              ]
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  child: Text(
                    'Войти',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                const Text(
                  'Для получения кода ведите свой номер телефона',
                  style: TextStyle(fontSize: 18),
                ),
                Form(
                    key: _formKey,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const EnterAuthCode())
                      );
                    },
                    child: const Text('Получить код'),
                  ),
                )
              ],
            )
          )
        )
      ],
    );
  }
}


// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Form(
// key: _formKey,
// child: Column(
// children: [
// const Text(
// 'Войти'
// ),
// TextFormField(
// validator: (value) {
// if (value == null || value.isEmpty) {
// return 'Введите номер телефона';
// }
// return null;
// },
// decoration: const InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(Radius.circular(3)),
// gapPadding: 3
// )
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 16),
// child: ElevatedButton(
// onPressed: () {
// if (_formKey.currentState!.validate()) {
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => const EnterAuthCode())
// );
// }
// },
// child: const Text('Получить код'),
// ),
// )
// ],
// )
// )
// ],
// );