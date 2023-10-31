import 'package:flutter/material.dart';

class TextFieldEntry extends StatelessWidget {
  const TextFieldEntry(
      {required this.title, required this.hintText, super.key});

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white10,
              ),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: title,
                  hintStyle: const TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
