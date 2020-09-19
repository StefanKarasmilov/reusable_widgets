import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final Function onChanged;
  final Function onSubmitted;
  final TextEditingController controller;
  final Color color;
  final Color iconColor;
  final Color hintColor;
  final bool shadowOn;
  final double height;
  final double width;

  const CustomInputField({
    Key key, 
    this.icon, 
    this.hintText, 
    this.keyboardType, 
    this.onChanged, 
    this.onSubmitted, 
    this.controller, 
    this.color = Colors.white, 
    this.shadowOn = true, 
    this.iconColor = Colors.grey, 
    this.hintColor = Colors.grey, 
    this.height = 55, 
    this.width = double.infinity,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return _container();
   
  }

  Widget _container() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: this.height,
      width: this.width,
      child: _content(),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          if (shadowOn)
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 0.5,
            offset: Offset(0, 3)
          )  
        ] 
      ),
    );

  }

  Widget _content() {

    return Row(
      children: [

        (icon != null) 
         ? _icon() 
         : Container(),

        _textField(),

      ],
    );

  }

  Widget _icon() {

    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );

  }

  Widget _textField() {

    return Flexible(
      child: TextField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );

  }

}