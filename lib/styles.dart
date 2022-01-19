import 'package:flutter/material.dart';

ButtonStyle b1=ButtonStyle(
   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))
                    ,padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                    backgroundColor: MaterialStateProperty.all(Colors.orange)
);
TextStyle t1=TextStyle(color: Colors.black,
fontSize: 25,
fontWeight: FontWeight.bold,
backgroundColor: Colors.orange

);
TextStyle t2=TextStyle(
  color: Colors.black,
fontSize: 20,
fontWeight: FontWeight.bold, 

);
TextStyle t3=TextStyle(
  color: Colors.blue,
fontSize: 15,
fontWeight: FontWeight.bold, 

);
