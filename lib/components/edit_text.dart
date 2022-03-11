import 'package:flutter/material.dart';

class EditText extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  const EditText({Key? key,required this.hintText,required this.textController}) : super(key: key);

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color(0xffEAEAEA)),
      child: TextField(
        controller: widget.textController,
        decoration:  InputDecoration(
            hintText:  widget.hintText,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(left: 30)
        ),
      ),
    );
  }
}
