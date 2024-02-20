import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();
    TextEditingController numberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Screen"),
      ),
      body: Form(
        key: key,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Number",
                ),
                validator: (value) {
                  // is EMpty = ""
                  if (value == null || value.isEmpty) {
                    return "Enter the number";
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar( SnackBar(content: Text("Sucess ${numberController.text}")));
                  }
                },
                child: const Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
