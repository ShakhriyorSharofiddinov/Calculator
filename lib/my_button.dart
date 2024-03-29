import 'package:flutter/material.dart';


class MyButton extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  const MyButton(
      {super.key, required this.darkMode, required this.child, required this.borderRadius, required this.padding});

  @override
  State<MyButton> createState() => _MyButtonState();
}

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);



class _MyButtonState extends State<MyButton> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event){
    setState(() {
      _isPressed = true;
    });
  }
  void _onPointerUp(PointerUpEvent event){
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool darkMode = widget.darkMode;
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,

      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
            color: darkMode ? colorDark : colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed
                ? null
                : [
              BoxShadow(
                color: darkMode ? Colors.black54 : Colors.blueGrey.shade200,
                offset: const Offset(4.0, 4.0),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: darkMode ? Colors.blueGrey.shade700 : Colors.white,
                offset: const Offset(4.0, 4.0),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ]
        ),
        child: widget.child,
      ),
    );
  }
}