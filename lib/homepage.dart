import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_19/util/coffee_tile.dart';
import 'package:flutter_application_19/util/coffi_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  void changeindex(value) {
    setState(() {
      currentindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Find the best coffee for you',
                style: GoogleFonts.bebasNeue(fontSize: 60)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.orange,
                ),
                hintText: "Find your coffee",
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CofeeType(coffetype: 'Cappucino'),
                CofeeType(coffetype: 'Latte'),
                CofeeType(coffetype: 'Black'),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CofeeTile(
                cofeepic: "assets/cofee1.jpg",
                cofeetext: "Cappucino",
                cofeetext1: "With Almond Milk",
                cofeetext2: "\$4.0",
              ),
              CofeeTile(
                cofeepic: "assets/cofee2.jpg",
                cofeetext1: "With Milk",
                cofeetext2: "\$3.9",
                cofeetext: "Latte",
              ),
              CofeeTile(
                cofeepic: "assets/Cofeehouses.webp",
                cofeetext: "Black Tea",
                cofeetext1: "With Cream",
                cofeetext2: "\$4.0",
              ),
            ],
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: currentindex,
          onTap: changeindex,
          selectedItemColor: Colors.amber[700],
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "notifications")
          ]),
    );
  }
}
