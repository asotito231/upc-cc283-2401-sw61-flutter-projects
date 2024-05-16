import 'package:flutter/material.dart';

class AddPersonScreen extends StatelessWidget{
  AddPersonScreen ({super.key, required this.updateList});
  final Function updateList;
  final TextEditingController _controller = TextEditingController();
  bool val = false;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            obscureText: val,
            validator: (value) {
              if (value == null || value.isEmpty){
                return "Please enter a name";
              }
              return null;
            },
            controller: _controller,
            decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText: "Name",),
          ),
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            updateList(_controller.text);
            Navigator.pop(context);
          },
          child: const Icon(Icons.save),
        ),
      );
  }
}