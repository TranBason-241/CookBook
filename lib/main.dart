import 'package:cookbook/Views/Pages/Store/store_home_page.dart';
import 'package:cookbook/Views/Pages/Store/store_order_detail.dart';

import 'Views/Pages/Product_detail/product_detail.dart';
import 'package:cookbook/Views/common/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CookBox ',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: Colors.red,
          textTheme: TextTheme(
              headline4:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              button: TextStyle(fontWeight: FontWeight.bold))
              ),
      // home: HomePage(),
      // home: Product_detail_page()
          home: StoreHomePage()
          // home: StoreOderDetail()
    );
  }
}

class FoodItemSearch {
  final String name;
  final String image;
  final int price;
  final int calories;
  final String description;
  const FoodItemSearch(
      {required this.name,
      required this.price,
      required this.image,
      required this.calories,
      required this.description});
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Comment',
      style: optionStyle,
    ),
    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: Me',
      style: optionStyle,
    ),
  ];
  // FoodItemSearch fb = new ;
  List<FoodItemSearch> listItem = [
    FoodItemSearch(
        name: "Ba r???i kho",
        price: 20,
        description: "Ba r???i kho l?????ng n???c m??? v???a",
        calories: 700,
        image: "assets/images/baRoiKho.jpg"),
    FoodItemSearch(
        name: "B?? kho",
        price: 25,
        description: "B?? kho truy???n th???ng n?????c d???a",
        calories: 800,
        image: "assets/images/bo kho.jpg"),
    FoodItemSearch(
        name: "C?? b???ng kho",
        price: 12,
        description: "C?? b???ng thi??n nhi??n dai ngon.",
        calories: 800,
        image: "assets/images/ca bong kho.jpg"),
    FoodItemSearch(
        name: "Canh b?? ?????",
        price: 35,
        description: "Canh b?? ????? b??? d?????ng",
        calories: 1000,
        image: "assets/images/canh bi do.jpg"),
    FoodItemSearch(
        name: "Canh chua",
        price: 20,
        description: "H????ng v??? mi???n T??y quen thu???c",
        calories: 600,
        image: "assets/images/canh chua ca loc.jpg"),
    FoodItemSearch(
        name: "Cua rang mu???i",
        price: 40,
        description: "?????m ???? v??? bi???n",
        calories: 750,
        image: "assets/images/cua rang muoi.jpg"),
    FoodItemSearch(
        name: "L???u B??",
        price: 40,
        description: "L???u b?? truy???n th???ng",
        calories: 1400,
        image: "assets/images/lau bo.jpg"),
    FoodItemSearch(
        name: "M???c n?????ng",
        price: 32,
        description: "V??? bi???n s??u",
        calories: 1100,
        image: "assets/images/m???c n?????ng.jpg"),
  ];
//handle onlick Home Icon
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: new BottomNavigationBar(
      //     backgroundColor: Colors.white.withOpacity(0.8),
      //     items: [
      //       new BottomNavigationBarItem(
      //         icon: const Icon(Icons.comment),
      //         title: new Text('Th??ng b??o'),
      //       ),
      //       new BottomNavigationBarItem(
      //         icon: const Icon(Icons.home),
      //         title: new Text('Trang ch???'),
      //       ),
      //       new BottomNavigationBarItem(
      //         icon: const Icon(Icons.local_grocery_store),
      //         title: new Text('Gi??? h??ng'),
      //       ),
      //     ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Th??ng B??o',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang ch??nh',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Gi??? h??ng',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//Menu
              Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 70, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.place,
                    size: 30,
                    color: Colors.red,
                  ),
                  SvgPicture.asset(
                    "assets/icons/menu.svg",
                    height: 15,
                  ),
                ],
              ),
            )),
//Title
            Padding(

              padding: const EdgeInsets.only(top: 10, bottom: 20, left: 120),
              child:
                  Text("CookBox", style: Theme.of(context).textTheme.headline4),
            ),
//Category
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CategoryTitleItem(
                    title: "T???t c???",
                    active: true,
                  ),
                  CategoryTitleItem(
                    title: "N?????ng",
                    active: false,
                  ),
                  CategoryTitleItem(
                    title: "H???p",
                    active: false,
                  ),
                  CategoryTitleItem(
                    title: "Chi??n",
                    active: false,
                  ),
                  CategoryTitleItem(
                    title: "L???u",
                    active: false,
                  ),
                  CategoryTitleItem(
                    title: "Chay",
                    active: false,
                  ),
                ],
              ),
            ),
//Search
            Container(
              // alignment: Alignment.topLeft,
              // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              // height: 30,
              // width: double.infinity,
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     border: Border.all(color: kBorderColor)),
              // child: Row(
              //   children: [
              //     SvgPicture.asset("assets/icons/search.svg"),

              //   ],
              // ),
              padding: EdgeInsets.only(top: 20, left: 19, right: 19),
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(10))),
                    labelText: "t??m ki???m"),
              ),
            ),

            //List Search Item
            Container(
              margin: EdgeInsets.only(left: 15, top: 10),
              alignment: Alignment.center,
              height: 300,
              width: 360,
              color: Colors.red.withOpacity(0.05),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: listItem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 1),
                itemBuilder: (context, index) {
                  final FoodItemSearch foodItemSeach = listItem[index];
                  String a = foodItemSeach.name;
                  return Card(
                      elevation: 5,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            // top: 0,
                            left: -10, //Khong hieu sao -5 la phong to hinh len
                            child: Container(
                              height: 120,
                              width: 200,
                              margin: EdgeInsets.only(left: 2),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                  "${foodItemSeach.image}",
                                ),
                              )),
                            ),
                          ),
                          //price
                          Positioned(
                              top: 113,
                              left: 128,
                              child: Text(
                                "\$${foodItemSeach.price}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 20),
                              )),
                          //name off food
                          Positioned(
                            top: 112,
                            left: 2,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "${foodItemSeach.name}",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 135,
                            left: 2,
                            child: Container(
                              width: 127,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "${foodItemSeach.description} ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black.withOpacity(0.5)),
                                    maxLines: 4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 155,
                            right: -50,
                            child: Container(
                              width: 140,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "${foodItemSeach.calories}/kcl",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ));
                },
              ),
            ),
            // banner
            Container(margin: EdgeInsets.only(top: 17),
            padding: EdgeInsets.only(left: 18),
            width: 372,
              child: Image.asset("assets/images/banner.png"),
            ),
            Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "B??n Ch???y Nh???t!",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: 375,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodCard(
                      name: 'G?? N?????ng',
                      price: 15,
                      image: "assets/images/gaNuong.jpg",
                      description: "G?? dai n?????ng than ?????m v??? mu???i s?? chanh",
                      calories: 800,
                    ),
                    FoodCard(
                      name: 'Canh B?? ?????',
                      price: 20,
                      image: "assets/images/canh bi do.jpg",
                      description: "Canh b?? ????? b??? d?????ng",
                      calories: 1200,
                    ),
                    FoodCard(
                      name: 'Canh chua',
                      price: 15,
                      image: "assets/images/canh chua ca loc.jpg",
                      description: "H????ng v??? mi???n T??y quen thu???c",
                      calories: 900,
                    ),
                    FoodCard(
                      name: 'Mi???n l????ng chay',
                      price: 10,
                      image: "assets/images/mien luong chay tron.jpg",
                      description: "M??n chay ngon",
                      calories: 500,
                    ),
                    FoodCard(
                      name: 'V???t quay BK',
                      price: 10,
                      image: "assets/images/vit quay.jpg",
                      description: "H????ng v??? T??y B???c",
                      calories: 500,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTitleItem extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitleItem(
      {Key? key, required this.title, @required this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (active) {
      return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "$title",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17),

            // style: Theme.of(context).textTheme.button.copyWith(
            //       color: Colors.red;
            //     ),
          ));
    }
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Text(
          "$title", style: TextStyle(color: Colors.black.withOpacity(.3)),
          // style: Theme.of(context).textTheme.button.copyWith(
          //       color: Colors.red;
          //     ),
        ));
  }
}

class FoodCard extends StatelessWidget {
  final String name;
  final String image;
  final int price;
  final int calories;
  final String description;

  const FoodCard({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
    required this.calories,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 30),
      height: 270,
      width: 220,
      // color: Colors.yellow,
      child: Stack(
        children: <Widget>[
          Container(
            height: 270,
            width: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.redAccent.withOpacity(0.05)),
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            height: 150,  
            width: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red.withOpacity(0.2)),
          ),
          //food image
          Positioned(
            // top: 0,
            // left: -5,
            child: Container(
              height: 190,
              width: 230,
              margin: EdgeInsets.only(left: 2),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "$image",
                ),
              )),
            ),
          ),
          //price
          Positioned(
              top: 150,
              left: 145,
              child: Text(
                "\$$price",
                style: Theme.of(context).textTheme.headline5,
              )),
          //name off food
          Positioned(
            top: 150,
            left: 2,
            child: Column(
              children: <Widget>[
                Text(
                  "$name",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
          Positioned(
            top: 170,
            left: 2,
            child: Container(
              width: 140,
              child: Column(
                children: <Widget>[
                  Text(
                    "$description",
                    style: TextStyle(
                        fontSize: 11, color: Colors.black.withOpacity(0.5)),
                    maxLines: 4,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 235,
            right: 90,
            child: Container(
              width: 140,
              child: Column(
                children: <Widget>[
                  Text(
                    "$calories/kcl",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class GoogleMap extends StatefulWidget {
//   @override
//   _GoogleMapState createState() => _GoogleMapState();
// }

// class _GoogleMapState extends State<GoogleMap> {
//   GoogleMapController mapController;

//   final LatLng _center = const LatLng(45.521563, -122.677433);

//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Maps Sample App'),
//           backgroundColor: Colors.green[700],
//         ),
//         body: GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: CameraPosition(
//             target: _center,
//             zoom: 11.0,
//           ),
//         ),
//       ),
//     );
//   }
// }