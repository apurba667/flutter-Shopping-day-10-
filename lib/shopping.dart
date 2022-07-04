import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shopping extends StatefulWidget {
  const Shopping({Key? key}) : super(key: key);

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  List<String> _products = [
    "Laptop",
    "Mobile",
    "Watch",
    "Phone",
    "Laptop",
    "Mobile",
    "Watch",
    "Phone",
    "Laptop",
    "Mobile",
    "Watch",
    "Phone",
    "Laptop",
    "Mobile",
    "Watch",
    "Phone",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Column(
          children: [
            Text(
              "Online Shopping",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            Text("Life is easy here"),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          color: Colors.redAccent),
                      child: Column(
                        children: [
                          Expanded(flex: 1, child: Text("40% discount")),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "images/aa.jpg",
                                height: 50,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          color: Colors.black),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "50% discount",
                                style: TextStyle(color: Colors.white),
                              )),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "images/12.jpg",
                                height: 50,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: Colors.black),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "20% discount",
                              style: TextStyle(color: Colors.white),
                            )),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "images/bb.jpg",
                              height: 50,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Categories"), Text("Viewall")],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(_products[index]))),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
