import 'package:flutter/material.dart';

// ignore_for_file: file_names
// ignore: avoid_types_as_parameter_names
Container searchBox(String title, String image) {
  return Container(
    padding: EdgeInsets.only(left: 50),
    constraints: BoxConstraints(maxHeight: 30, maxWidth: 200),
    // ignore: unnecessary_new
    child: new TextField(
      onTap: () {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
        hintText: title,
        prefixIcon: Image.asset(
          image,
        ),
        // contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
}
