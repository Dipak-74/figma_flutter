import 'package:flutter/material.dart';
import 'page.dart';
import 'Home_Page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
List imag = [
  "img/shoppinggirl.png",
  "img/shandel.png",
  "img/gogal.png",
  "img/hair.png",
  "img/shoppinggirl.png",
  "img/shandel.png",
  "img/gogal.png",
  "img/hair.png",
];

int selectindex = 0;
List percent = ["All", "10%", "20%", "30%", "40%", "50%", "60%", "70%"];

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/bbb.png"),

            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,

              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('9.41'),
                  Row(
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
                ],
              ),
            ),
            Container(
              height: 90,
             
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Flash Sale",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Choose Your Discount",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.timer),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.white,
                        child: Text(
                          '00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.white,
                        child: Text(
                          '36',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.white,
                        child: Text(
                          '58',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
            
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: percent.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),

                    //   child: GestureDetector(
                    //     onTap: () {

                    //       setState(() {
                    //         selectindex=index;
                    //       });
                    //     },
                    //         child: Container(
                    //   width: 50,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: selectindex== index ? Colors.blue :Colors.grey,
                    //       width: selectindex==index ? 3:1,
                    //     ),
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   child: Center(
                    //     child: Text(
                    //       percent[index],
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.w900
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    //   ),/
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        setState(() {
                          selectindex = index;
                        });
                      },
                      child: Container(
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectindex == index
                                ? Colors.blue
                                : Colors.grey,
                            width: selectindex == index ? 3 : 1,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            percent[index],
                            style: TextStyle(
                             
                              fontWeight: FontWeight.bold,fontSize: 14
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("img/4girl.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color:Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Live",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
              children: [
                Text(
                  percent[selectindex]=="All"?"All Products":"${percent[selectindex]}Discount",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
                Icon(Icons.tune),
              ],
            ),
            Container(),
            Expanded(
              child: ListView.builder(
                itemCount:(imag.length/2).ceil(),
                itemBuilder: (context, index) {
                  int i = index*2;
                  return Container(
                    height: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 250,
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(imag[i]),
                                        fit: BoxFit.fill,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,

                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    width: 150,
                                    padding: EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Lorem ipsum dolor sit amet consectetur",
                                          textAlign: TextAlign.start,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$16,00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              "\$20,00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: Color.fromARGB(
                                                  255,
                                                  215,
                                                  149,
                                                  49,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                               if (percent[selectindex] != "All")
                              Positioned(
                                top: 5,
                                right: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 3,
                                  ),

                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      208,
                                      31,
                                      134,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "-${percent[selectindex]}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 250,
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(imag[i+1]),
                                        fit: BoxFit.fill,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,

                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    width: 150,
                                    padding: EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Lorem ipsum dolor sit amet consectetur",
                                          textAlign: TextAlign.start,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$16,00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 20,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              "\$20,00",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: Color.fromARGB(
                                                  255,
                                                  215,
                                                  149,
                                                  49,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                               if (percent[selectindex] != "All")
                              Positioned(
                                top: 5,
                                right: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 3,
                                  ),

                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      208,
                                      31,
                                      134,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "-${percent[selectindex]}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    
  }
}


class Dipak extends StatefulWidget {
  const Dipak({super.key});

  @override
  State<Dipak> createState() => _DipakState();
}

class _DipakState extends State<Dipak> {
  int selectindex=0;
  int iconsindex=-1;
  List order=[
    "To Pay",
    "To Receive",
    "To Review"
  ];
  List orderimg=[
    "img/order1.png",
    "img/order2.png",
    "img/order3.png",
    "img/order4.png",
    "img/order1.png",
    "img/order2.png",
    "img/order3.png",
    "img/order4.png",
  ];
  List icons=[
    Icons.print,
    Icons.filter,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        height: 800,
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: double.infinity,
          
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('9.41'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                      children: [
                        Icon(
                          Icons.signal_cellular_alt_2_bar_rounded,
                          
                        ),
                        Icon(Icons.wifi,),
                        Icon(Icons.battery_full_rounded, ),
                      ],
                    ),
                  ],
                ),
              ),
             
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration:BoxDecoration(
                      border: BoxBorder.all(color: Colors.black),
                      borderRadius: BorderRadius.
                      circular(100)
                    ) ,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('img/avatar1.png'),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text('My Activity',
                      style: TextStyle(color: Colors.white,),
                      ),
                    ),
                    
                  ),
                 
                  Container(
                    height: 50,
                    width:150,
                   child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icons.length,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              iconsindex=index;
                            });

                          },
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                      radius: 15,
                                             child: Center(child: Icon(icons[index],color: iconsindex==index?Colors.blue:null,)),
                                          ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color:iconsindex==index ? Colors.blue:null
                                    ),
                                    
                                  ))        
                                ],
                              ),
                     
                        ),
                     );
                    },
                   ),
                  ),
                ],
              ),
              ),
          Container(
            width: double.infinity,
         padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                    'Hello, Romina!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
          ),
                
          Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                   padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 161, 147, 147),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Announcement',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit luctus libero ac vulputate.',
                              style: TextStyle(color: Colors.white,fontSize:12),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                     InkWell(
                      onTap: () {
                        print("Hii");
                      },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.arrow_right_alt_rounded, color: const Color.fromARGB(255, 255, 255, 255),size: 30,),
                      ),
                     ),
                    ],
                  ),
                ),
                  Container(
            width: double.infinity,
          padding: EdgeInsets.only(left: 20),
            child: Text(
                    'Recently viewed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
          ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('img/girl.png'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                    Container(
            width: double.infinity,
          padding: EdgeInsets.only(left: 20),
            child: Text(
                    'My Orders',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
          ), 
                Container(
                  height: 60,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: order.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                            selectindex=index;
                            });
                          },
                          child: Stack(
                            children: [
                             Container(
                            width: 110,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 244, 238, 238),
                                                    
                            ),
                            child: Center(
                            child: Text(order[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 66, 97, 190)
                            ),),
                            ),
                          ),
                              Positioned(
                                right: 0,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color:selectindex==index?Colors.green:null,
                                  ),
                                )
                              
                              ),
                            ],
                          ),
                       ),
                      );
                    },
                  ),
                  ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 20),
            child: Text("Stories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
          ),
          Container(
            height: 150,
            child:ListView.builder(
            scrollDirection: Axis.horizontal, 
            itemCount: orderimg.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                   
                    borderRadius:BorderRadius.circular(10),
                    image: DecorationImage(
                    image: AssetImage(orderimg[index]),
                    fit: BoxFit.cover
                    ),
                  ),
          
                ),
              );
            },
            ),
          ),
            ],
          ),
        ),
    );
  
  }
}


class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  int selectindex = 0;
  List view = ["", "", "", "", ""];
  List screen = [
    MyWidget(),
    Center(child: Text("Likes Coming Soon")),
    Center(child: Text("Menu Coming Soon")),
    Center(child: Text("Cart Coming Soon")),
    Dipak(),
  ];
  List viewimg=[
    "img/view1.png",
    "img/view2.png",
    "img/view3.png",
    "img/view4.png",
    "img/view5.png",
  ];
  List highimg=[{
   "im":"img/shoppinggirl.png",
   "price":"\$17.00"
  },
  {

   "im":"img/shandel.png",
   "price":"\$12.00"
  },
{

   "im":"img/gogal.png",
   "price":"\$7.00"
},
{

   "im":"img/hair.png",
   "price":"\$3.80"
},
{

   "im":"img/shoppinggirl.png",
   "price":"\$16.00"
},
  {
    "im":"img/shandel.png",
  "price":"\$12.50"
  }
   
  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: double.infinity,

                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('9.41'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Icon(Icons.signal_cellular_alt_2_bar_rounded),
                        Icon(Icons.wifi),
                        Icon(Icons.battery_full_rounded),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Text(
                  'Wishlist',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recently Viewed',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(viewimg[index]),
                      ),
                    );
                  },
                ),
              ),
              Container(
              height: 400,
                child: ListView.builder(
                  
                  itemCount: highimg.length,
                  itemBuilder: (context, index) {
                    return  Container(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 130,
                          child: Stack(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(highimg[index]['im']),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 5,
                                child: CircleAvatar(
                                  radius: 20,
                                  child: Center(
                                    child: Icon(Icons.delete, color: Colors.red),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 180,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                                  children: [
                                    Text('Lorem ipsum dolor sit amet consectetur.'),
                                    Text(
                                      highimg[index]["price"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                255,
                                                172,
                                                194,
                                                201,
                                              ),
                                              borderRadius: BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Pink',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Container(
                                            height: 30,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                255,
                                                172,
                                                194,
                                                201,
                                              ),
                                              borderRadius: BorderRadius.circular(
                                                10,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'M',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 120,
                                alignment: Alignment.bottomCenter,
                                child: Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                         
                  },
                             ),
              ),
            ],
          ),
        ),
      );
  
  }
}













