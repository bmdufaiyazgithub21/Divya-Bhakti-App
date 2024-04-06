import 'package:flutter/material.dart';

class customRoute{

  static Routing(Widget page, String tag)
  {
    return Hero(tag: tag, child:page );
  }
}