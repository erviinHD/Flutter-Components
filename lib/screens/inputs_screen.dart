import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Ervin',
      'last_name': 'Cabascango',
      'email': 'ervin@gmail.com',
      'password': '12345',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Input and Forms Screen'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    hintText: 'Name',
                    labelText: 'Name',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    hintText: 'Last name ',
                    labelText: 'Last name',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    hintText: 'Email',
                    labelText: 'Email',
                    formProperty: 'email',
                    formValues: formValues,
                    keyBoardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    hintText: 'Password',
                    labelText: 'Password',
                    formProperty: 'password',
                    formValues: formValues,
                    isPasword: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Super User',
                        child: Text('Super User'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Junion Developer',
                        child: Text('Junion Developer'),
                      )
                    ],
                    onChanged: (String? value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text('save')),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('No valid');
                        return;
                      }

                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
