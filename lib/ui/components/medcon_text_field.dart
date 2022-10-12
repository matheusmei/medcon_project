import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MedConTextField extends StatefulWidget {
  final String labelText;
  final ValueChanged<String>? onChanged;

  const MedConTextField({required this.labelText,
  this.onChanged, Key? key}) : super(key: key);

  @override
  State<MedConTextField> createState() => _MedConTextFieldState();
}

class _MedConTextFieldState extends State<MedConTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),

        ),
        labelText: widget.labelText,
        
      ),
      onChanged: widget.onChanged,
    );
  }
}
