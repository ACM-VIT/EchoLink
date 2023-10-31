import 'package:flutter/material.dart';

class PasswordFieldEntry extends StatefulWidget {
  PasswordFieldEntry({required this.title, super.key});

  final String title;

  @override
  State<PasswordFieldEntry> createState() => _PasswordFieldEntryState();
}

bool temp = true;

class _PasswordFieldEntryState extends State<PasswordFieldEntry> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(8.0)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.title,
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
                obscureText: temp,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        temp = !temp;
                      });
                    },
                    icon: Icon(temp ? Icons.visibility : Icons.visibility_off,
                        color: Colors.deepPurple),
                  ),
                  hintText: '********',
                  hintStyle:
                      const TextStyle(fontSize: 15.0, color: Colors.white),
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
