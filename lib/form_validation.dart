import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  const MyFormValidation({Key? key}) : super(key: key);

  @override
  State<MyFormValidation> createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();
  FocusNode nameFocusNode = FocusNode();
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameFocusNode.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormValidation'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '공백 안돼';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: const Text('완료')),
              TextField(
                controller: nameController,
                onChanged: (text) {},
                focusNode: nameFocusNode,
                decoration: const InputDecoration(
                    hintText: '이름 입력',
                    border: InputBorder.none,
                    labelText: '이름'),
                autofocus: true, //먼저 활성화
              ),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(nameFocusNode);
                  },
                  child: const Text('포커스')),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            content: Text(
                              nameController.text,
                              style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }));
                  },
                  child: const Text('textfield 값 확인'))
            ],
          )),
    );
  }
}
