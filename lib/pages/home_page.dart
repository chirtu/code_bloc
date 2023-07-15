import 'dart:ui';
import 'package:code_bloc/themes/colors.dart';
import 'package:code_bloc/widgets/home_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool isTapped = false;
int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black12.withOpacity(.2),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 150,
                  width: 150,
                decoration: BoxDecoration(
                  color: colors.yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )
                ),
                  ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur values as needed
              child: Container(
                color: Colors.black.withOpacity(.9),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(icon:Icon(Icons.menu, color: Colors.white) ,onPressed: null,),
                          IconButton(  onPressed:null, icon: Icon(CupertinoIcons.search, color: Colors.white,),)
                        ],
                      ),
                      SizedBox(height: 30,),
                      Text("Some Sweets of", style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 31, color: colors.white),),
                      Text("Happiness!", style: GoogleFonts.lato(fontWeight: FontWeight.normal, fontSize: 21, color: colors.white),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // color:  isTapped? colors.yellow: colors.white,
                                  color:  colors.yellow,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text("Donuts", style: GoogleFonts.lato(fontWeight: FontWeight.normal, fontSize: 12,
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
                              child: Text("Ice Cream", style: GoogleFonts.lato(fontWeight: FontWeight.normal, fontSize: 14,
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
                              child: Text("Bombolini", style: GoogleFonts.lato(fontWeight: FontWeight.normal, fontSize: 14,
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
                              subtitle: 'Strawberry Cream',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Dark Sprinkles',
                              price: "6,800",
                              subtitle: 'Chocolate with ..',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Choco Avocado',
                              price: "8,800",
                              subtitle: 'Avocado Cream',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Vannila Splash',
                              price: "8,800",
                              subtitle: 'Vannila Cream with Vannila Splash',),
                            HomeCard(
                              image: 'assets/images/donut.jpeg',
                              title: 'Vannila Splash',
                              price: "8,800",
                              subtitle: 'Vannila Cream with ..',),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white12,
        type: BottomNavigationBarType.fixed ,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.timer,color: colors.grey,),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cancel_outlined,color: colors.grey,),
              label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 80,
              child: Container(
                width: 56,
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors.yellow,
                        ),
                        child: Icon(
                          Icons.add,
                          color: colors.black,
                        ),
                      ),
                    ),
                SizedBox(height: 40)
                  ],
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_sharp, color: colors.grey,),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart, color: colors.grey,),
              backgroundColor: colors.yellow,
              label: ''
          ),
        ],
      ),

    );
  }
}
