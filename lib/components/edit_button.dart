import 'package:flutter/material.dart';

class EditButton extends StatefulWidget {
  final Function onClicked;
  final String txt;
  final Color btnClr;
  const EditButton({Key? key,required this.onClicked,required this.txt,this.btnClr = const Color(0xff0AC089)}) : super(key: key);

  @override
  State<EditButton> createState() => _EditButtonState();
}

class _EditButtonState extends State<EditButton> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        widget.onClicked();
      },
      child: Container(
        width: size.width,
        height: 45,
        decoration:  BoxDecoration(color: widget.btnClr, borderRadius:const BorderRadius.all((Radius.circular(20)))),
        child: Center(child: Text(widget.txt, style: const TextStyle(color: Colors.white),)),
      ),
    );
  }
}
