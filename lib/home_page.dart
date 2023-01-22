import 'package:cofee_shop/util/coffee_tile.dart';
import 'package:cofee_shop/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ]),
        body: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(Icons.menu), Icon(Icons.person)],
                    ),
                    //Find the best
                    SizedBox(
                      height: 20,
                    ),
                    Text("Find the best \ncoffee for you",
                        style: GoogleFonts.bebasNeue(fontSize: 56)),
                    // Search bar
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'find your coffee...',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.shade600,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade600),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Horizontal listview menu
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CoffeType(coffeeType: 'Cappucino',isSelected: true,),
                          CoffeType(coffeeType: 'Expresso'),
                          CoffeType(coffeeType: 'Latte'),
                          CoffeType(coffeeType: 'Black'),
                        ],
                      ),
                    ),
                    //Horizontal scroll
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 330,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CofeeTile(),
                          SizedBox(
                            width: 20,
                          ),
                          CofeeTile(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
