import 'package:flutter/material.dart';
import 'package:heavens_food/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Map<String, dynamic>> list = [
    {'image': "assets/image/Burger.jpg"},
    {'image': "assets/image/Burger2.jpg"},
    {'image': "assets/image/Burger1.jpg"},
  ];

  List<Map<String, dynamic>> list2 = [
    {'name': "Potato wedges", 'name2': "Recommended"},
    {'name': "Corn on the cob", 'name2': ""},
    {'name': "kabariya jenish", 'name2': ""}
  ];

  int selectedIndex = 0;

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Column(
        children: [
          Container(
            height: 320,
            width: 365,
            //     color: Colors.red,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 300,
                      width: 360,
                      decoration: BoxDecoration(
                        // color: Colors.yellow,
                        image: DecorationImage(
                            image: AssetImage(list[index]['image']),
                            fit: BoxFit.fill),
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 15, right: 15),
                    child: Row(
                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.black26,
                            child: Icon(Icons.arrow_back, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 240,
                        ),
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.black26,
                          child:
                              Icon(Icons.favorite_border, color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            pageController.animateToPage(index,
                                duration: Duration(seconds: 2),
                                curve: Curves.decelerate);
                          },
                          child: CircleAvatar(
                            backgroundColor: selectedIndex == index
                                ? Colors.orange
                                : Colors.white,
                            radius: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 13, left: 13, top: 35, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Big Mad Burger",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(height: 10),
                Text("Potato Bun, cheddar cheese,beef,cucumber,red",
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 15)),
                SizedBox(height: 5),
                Text("onion,iceberg lettuce,avocado, tomato",
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 15)),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Choose addition",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text("Required",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15))
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      child: Icon(
                        Icons.expand_less_rounded,
                        size: 25,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 170,
            width: 365,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1)]),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  list2.length,
                  (index) => Column(
                    children: [
                      Container(
                        height: 55,
                        width: 365,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        //  color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 13,
                          ),
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 2),
                                    shape: BoxShape.circle),
                              ),
                            ),
                            title: Row(
                              children: [
                                Text(list2[index]["name"]),
                              ],
                            ),
                            subtitle: Text(list2[index]["name2"]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Page3()),
                );
              },
              child: Container(
                height: 50,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff303030),
                ),
                child: Center(
                  child: Text("Add (1) to card - 12,90",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
