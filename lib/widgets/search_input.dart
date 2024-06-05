import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  // ignore: use_super_parameters
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: 'Where would you like to live?',
          prefixIcon: Container(
            padding: const EdgeInsets.all(15),
          ),
          contentPadding: const EdgeInsets.all(2),
        ),
      ),
    );
  }
}
