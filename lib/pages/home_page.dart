import 'dart:ui';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:code_bloc/themes/colors.dart';
import 'package:code_bloc/widgets/home_card.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(.3),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width:size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // GlowingOverscrollIndicator(
                  //   axisDirection: AxisDirection.down,
                  //   color: Colors.yellow.shade500,
                  //   child:
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(60),
                                bottomRight: Radius.circular(60),
                                topRight: Radius.circular(60),
                              ),
                        color: Colors.yellow.shade700.withOpacity(.6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.shade500.withOpacity(.6),
                            spreadRadius: 8,
                            blurRadius: 20,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      width: 200,
                      height: 170,
                    ),

                  // ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                            topRight: Radius.circular(60),
                          ),
                          color: Colors.yellow.withOpacity(.9),
                          boxShadow: [
                            // BoxShadow(
                            //   color: Colors.yellow,
                            //   spreadRadius: 8,
                            //   blurRadius: 20,
                            //   offset: Offset(0, 0),
                            // ),
                          ],
                        ),
                        width: 150,
                        height: 150,
                      ),
                    ),
                ],
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                blendMode: BlendMode.srcOver,
              child:  BlurryContainer(
                // blur:8 ,
                color:Colors.black12.withOpacity(.78),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(icon:Icon(Icons.density_large_outlined, color: Colors.white) ,onPressed: null,),
                          IconButton(  onPressed:null, icon: Icon(CupertinoIcons.search, color: Colors.white,),)
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text("Some sweets of", style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 31, color: colors.white),),
                      SizedBox(height: 20,),
                      Text("Happiness!", style: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 21, color: colors.white),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                              decoration: BoxDecoration(
                                // color:  isTapped? colors.yellow: colors.white,
                                  color:  Colors.yellow.shade600,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text("Donuts", style: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 12,
                                  color: colors.black),),
                            ),
                            onTap: null,
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                // color:  isTapped? colors.yellow: colors.white,
                                  color:  colors.transparent,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text("Ice Cream", style: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 14,
                                color:
                                // isActive? colors.black?  // applited when there a real navigation
                                colors.grey
                              ),),
                            ),
                            onTap: null,
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                // will be applied when there a real state
                                // color:  isTapped? colors.yellow: colors.transparent,
                                  color:  colors.transparent,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text("Bombolini", style: GoogleFonts.openSans(fontWeight: FontWeight.normal, fontSize: 14,
                                  color:
                                  // isActive? colors.black?  // applited when there a real navigation
                                  colors.grey

                              ),),
                            ),
                            onTap: null,
                          ),
                          Icon(Icons.menu_open_rounded, size: 24,color: colors.grey,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      GridView.count(
                          shrinkWrap: true,
                          primary: false,
                          padding: const EdgeInsets.all(0),
                          crossAxisSpacing: 27,
                          mainAxisSpacing: 27,
                          crossAxisCount: 2,
                          childAspectRatio: .75,
                          children: <Widget>[
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Unicorn Sprinkles',
                              price: "7,800",
                              subtitle: 'Strawberry Cream with Strawberry Cream',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Dark Sprinkles',
                              price: "6,800",
                              subtitle: 'Chocolate with spring ',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Choco Avocado',
                              price: "8,800",
                              subtitle: 'Avocado Cream',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Vannila Splash',
                              price: "8,800",
                              subtitle: 'Vannila Cream  with Vannila Cream ',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Vannila Splash',
                              price: "8,800",
                              subtitle: 'Vannila Creamy with Vannila Creamy',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Vannila Splash',
                              price: "8,800",
                              subtitle: 'Vannila Cream with Vannila Splash',),
                          ]
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  CurvedNavigationBar(
        height:50 ,
        color: Colors.black12,
        backgroundColor: Colors.white12,
        items: <Widget>[
          Icon  ( CupertinoIcons.timer,color: colors.grey,),
          Icon  (Icons.cancel_outlined, color: colors.grey,) ,
          Icon  (Icons.add),
          Icon  (Icons.favorite_border_outlined, color: colors.grey,),
          Icon  ( CupertinoIcons.cart, color: colors.grey,),
        ],
        buttonBackgroundColor: Colors.yellow.shade600,
        onTap: (index) {
        },
      ),
    );
  }
}
