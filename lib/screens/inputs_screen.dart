import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Input and Forms Screen'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: const [
                CustomInputField(
                  hintText: 'Name',
                  labelText: 'Name',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  hintText: 'Last name ',
                  labelText: 'Last name',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  hintText: 'Email',
                  labelText: 'Email',
                  keyBoardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  hintText: 'Password',
                  labelText: 'Password',
                  isPasword: true,
                ),
              ],
            ),
          ),
        ));
  }
}
