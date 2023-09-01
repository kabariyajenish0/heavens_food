import 'package:flutter/material.dart';
import 'package:heavens_food/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> list = [
    {'image': "assets/image/1.png", 'name': "Pasta"},
    {'image': "assets/image/2.png", 'name': "Sushi"},
    {'image': "assets/image/3.png", 'name': "Salads"},
  ];

  List<Map<String, dynamic>> list2 = [
    {
      'image': "assets/image/4.jpeg",
      'name': "Heaven's Food",
      'name2': "4.5",
      'name3': "25 - 30 min",
      'name4': "Steak",
      'name5': "Fish",
      'name6': "Experimental"
    },
    {
      'image': "assets/image/5.jpg",
      'name': "Grill Hell House",
      'name2': "4.9",
      'name3': "40 - 50 min",
      'name4': "Grill",
      'name5': "Meat",
      'name6': "Experimental"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 365,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 45),
                child: Column(children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 5),
                      Text("800 Cheese avenue,"),
                      Text(" NYC", style: TextStyle(color: Colors.black26)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: 365,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search for food",
                          hintStyle: TextStyle(
                              fontSize: 14, color: Colors.grey.shade500),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          filled: false,
                          prefixIcon: Icon(Icons.search_rounded),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                          )),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 30, bottom: 10),
              child: Row(
                children: [
                  Text("Something new",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                ],
              ),
            ),
            Container(
              height: 180,
              width: 360,
              //  margin: EdgeInsets.only(left: 10),
              // color: Colors.red,
              child: ListView.builder(
                itemCount: list.length,
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    // clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 180,
                        width: 120,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13, top: 20),
                          child: Text(list[index]["name"],
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white)),
                        ),
                      ),
                      Positioned(
                        right: -70,
                        bottom: -80,
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          list[index]['image'],
                          //    height: 150,
                          //   width: 150,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 30, bottom: 10),
              child: Row(
                children: [
                  Text("Recommended",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 360,
              //  margin: EdgeInsets.only(left: 10),
              //  color: Colors.red,
              child: ListView.builder(
                itemCount: list2.length,
                padding: EdgeInsets.zero,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page2()));
                        },
                        child: Container(
                          height: 150,
                          width: 250,
                          margin: EdgeInsets.only(left: 10, top: 5),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              image: DecorationImage(
                                  image: AssetImage(
                                    list2[index]["image"],
                                  ),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list2[index]["name"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey.shade700)),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.orange.shade400,
                                  size: 17,
                                ),
                                Text(
                                  list2[index]["name2"],
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                                SizedBox(width: 5),
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.grey.shade400,
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.access_time_filled_sharp,
                                  size: 15,
                                  color: Colors.grey.shade600,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  list2[index]["name3"],
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                                SizedBox(width: 5),
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: Colors.grey.shade400,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "\$\$\$",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Container(
                                  height: 23,
                                  //  width: 35,

                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        list2[index]['name4'],
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade500),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 23,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        list2[index]['name5'],
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade500),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 23,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        list2[index]['name6'],
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade500),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: 365,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Icon(
                  Icons.home_outlined,
                  color: Colors.orange,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.grey,
                ),
                Text(
                  "Orders",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
