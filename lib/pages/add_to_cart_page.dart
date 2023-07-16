import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;


class AddToCartPage extends StatefulWidget {
  const AddToCartPage({Key? key}) : super(key: key);

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white12,
      body:  Stack(
        children: [
          Container(
            height: size.height,
            width:size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow.withOpacity(0.5),
                          spreadRadius: 200,
                          blurRadius: 200,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.radio_button_checked_outlined,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child:  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.withOpacity(0.5),
                            spreadRadius: 100,
                            blurRadius: 100,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.radio_button_checked_outlined,
                        color: Colors.yellow,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black12.withOpacity(.4),
            ),
          ),

        ],
      ),
    );
  }
}
