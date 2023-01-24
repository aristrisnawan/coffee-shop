import 'package:cofee_shop/util/coffee_tile.dart';
import 'package:cofee_shop/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of coffe type
  final List coffeeType = [
    //[Coffe type, isSelected]
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false],
  ];
  // User taped on coffe type
  void CoffeTypeSelected(int index) {
    setState(() {
      //this for loop makes every selected false
      for (var i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: Colors.grey[700],
          items: [
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
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: coffeeType.length,
                            itemBuilder: ((context, index) {
                              return new CoffeType(
                                coffeeType: coffeeType[index][0],
                                onTap: () {
                                  CoffeTypeSelected(index);
                                },
                                isSelected: coffeeType[index][1],
                              );
                            }))),
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
                          CofeeTile(
                            coffeImagePath: "assets/coffe.jpg",
                            coffeName: "Cappucino",
                            coffePrice: '4.0',
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CofeeTile(
                            coffeImagePath: "assets/coffee1.jpg",
                            coffeName: "Late",
                            coffePrice: '5.0',
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CofeeTile(
                            coffeImagePath: "assets/coffee2.jpg",
                            coffeName: "Late",
                            coffePrice: '5.0',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
