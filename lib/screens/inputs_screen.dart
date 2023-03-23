import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'First_Name': 'Silvana',
      'Last_Name': 'Perez',
      'Email': 'Silvana@flutter.com',
      'Password': '1234566',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                  formProperty: 'First_Name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                  formProperty: 'Last_Name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email de usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'Email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Clave',
                  hintText: 'Clave de usuario',
                  obscuredText: true,
                  formProperty: 'Password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Admin')),
                    DropdownMenuItem(value: 'Developer', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Jr. Developer', child: Text('Admin')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
