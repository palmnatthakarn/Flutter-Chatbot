import 'package:flutter/material.dart';
import 'package:project_test/components/text_field_containner.dart';

class RoundedInputField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final ValueChanged<String> onChangend;
  const RoundedInputField({
    super.key,
    required this.labelText,
    this.icon = Icons.person,
    required this.onChangend,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChangend,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        label: Text(labelText),
      ),
    ));
  }
}
