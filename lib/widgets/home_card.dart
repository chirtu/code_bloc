// ignore_for_file: prefer_const_constructors

import 'package:code_bloc/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;
  final String price;
  final Widget page;
  const HomeCard({required this.image, required this.title, required this.subtitle, required this.price, required this.page});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      child:  Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration(
          color:Colors.white10,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(height: 10,),
            Center(
              child: Container(
                // height: 100,
                // width: 10,
                child:Image.asset(image),
              ),
            ),
            Text(
              title,
              maxLines: 1,overflow: TextOverflow.ellipsis,
              style: GoogleFonts.lato(
                color: colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              maxLines: 1,overflow: TextOverflow.ellipsis,
              style: GoogleFonts.lato(
                color: colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,
                    style: GoogleFonts.lato(
                      color: colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                ) ,
                Icon(CupertinoIcons.add, size: 20,color: colors.yellow,)
              ],
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
