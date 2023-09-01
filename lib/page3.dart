import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Map<String, dynamic>> list = [
    {
      'image': "assets/image/Burger1.jpg",
      'name': "Big Mad Burger",
      'prise': "\$12.90"
    },
    {
      'image': "assets/image/Burger2.jpg",
      'name': "Pineapple Pork",
      'prise': "\$24.60"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: 365,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 35),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Order details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 17),
                    ),
                    Icon(
                      Icons.help_outline,
                      color: Colors.black,
                    ),
                  ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Heaven's food",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          size: 22,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Delivery / As soon as possible",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.grey.shade600,
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 22,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "800 Cheese avenue, NYS",
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade700),
                        )
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.grey.shade600,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 435,
            width: 365,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black12)]),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your order",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19)),
                    Text("See menu", style: TextStyle(fontSize: 15)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Column(
                      children: List.generate(
                          list.length,
                          (index) => Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                //   color: Colors.redAccent,
                                height: 70,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    list[index]["image"]),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              list[index]["name"],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(height: 6),
                                            Text(
                                              list[index]["prise"],
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey.shade500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    CounterClass(),
                                  ],
                                ),
                              ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade500)),
                    Text("\$37.50",
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade500)),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade500)),
                    Container(
                      height: 28,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text("Free",
                            style: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text("\$37.50",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ],
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff303030),
              ),
              child: Center(
                child: Text("Place order",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 50,
      //  color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.remove, size: 20, color: Colors.white),
            ),
          ),
          Text(
            "$counter",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.add, color: Colors.white, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
