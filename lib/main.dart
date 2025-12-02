import 'package:flutter/material.dart';
import 'Home_Page.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sale',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(88, 156, 137, 137),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/bbb.png"),

            alignment: Alignment.topRight,
          ),
        ),
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: double.infinity,

              padding: EdgeInsets.only(right: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: Text('9.41')),
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Icon(
                          Icons.signal_cellular_alt_2_bar_rounded,
                          color: Colors.white,
                        ),
                        Icon(Icons.wifi, color: Colors.white),
                        Icon(Icons.battery_full_rounded, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,

                itemCount: 5,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Container(
                      height: 500,
                      width: 300,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 350,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage("img/girl.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            height: 250,
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Ready?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        20,
                                        20,
                                        20,
                                      ),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SalePage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Let's Start",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  // duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: currentPage == index ? 16 : 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? Colors.blue
                        : Colors.blue[100],
                    borderRadius: BorderRadius.circular(6),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
