import 'package:bookshop/helpers/colors.dart';
import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                label: Text('Login'),
              ),
              validator: (value) {
                if (value!.isEmpty) return 'Please enter your username';
                return null;
              },
            ),
            _buildSpacer(15),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                label: Text('Password'),
              ),
              validator: (value) {
                if (value!.isEmpty) return 'Please enter your password';
                return null;
              },
            ),
            _buildSpacer(15),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(120, 40),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(CustomColors.babyColor),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      Navigator.of(context).pushNamed('/profile');
                      //Navigator.of(context).pushReplacementNamed('/profile');
                    });
                  }
                },
                child: const Text(
                  'Enter',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
          ]),
        ),
      ),
    );
  }
}

Widget _buildSpacer(double space) {
  return SizedBox(
    height: space,
  );
}
