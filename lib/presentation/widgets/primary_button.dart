import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? buttoncolor;
  final Color? textColor;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.buttoncolor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: textColor ?? Colors.black,
          ),
        ),
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(color: Colors.transparent),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          maximumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
          backgroundColor: MaterialStateProperty.all(
            buttoncolor ?? Color.fromARGB(255, 157, 136, 58),
          ),
        ),
      ),
    );
  }
}
