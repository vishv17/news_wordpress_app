import 'package:flutter/material.dart';

class LayoutUtils
{
  static Widget iconText(Icon iconWidget,Text textWidget)
  {
    return Row(
      children: <Widget>[
        iconWidget,
        SizedBox(width: 5.0,),
        textWidget
      ],
    );
  }
}