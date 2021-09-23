import 'package:cookbook/Views/Pages/Store/store_manage_order.dart';
import 'package:cookbook/Views/Pages/Store/store_order_detail.dart';
import 'package:cookbook/Views/Pages/product_detail/product_detail.dart';
import 'package:cookbook/Views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoreHomePage extends StatefulWidget {
  @override
  _StoreHomePageState createState() => _StoreHomePageState();
}

class _StoreHomePageState extends State<StoreHomePage> {
  List orderList = [
    {
      'name': 'Trần Bá Sơn',
      'address': '216 Tân Kỳ Tân Quý, Tân Phú',
      'price': '420000',
      'time': '${DateTime.now().toString()}',
      'orderCode' : '001'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode' : '002'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '130000',
      'time': '2021-09-23 08:41:21',
      'orderCode' : '003'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode' : '004'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode' : '005'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode' : '006'
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: new AppBar(
      //     title: new Text('App Name'),
      //     ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(1),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 0, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset('assets/icons/menu.svg'),
                  Container(
                      height: 59,
                      width: 59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/chefLogo.jpg'),
                        ),
                      ))
                ],
              ),
            ),
            //infor
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "CookBox chi nhánh 6",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  ),
                  Text(
                    "276 Tây Thạnh, Tân Phú, TP Hồ Chí Minh",
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
//banner
            // Container(
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(30),
            //       image: DecorationImage(
            //           image: AssetImage('assets/images/bannerStore.jpg'))),
            //   height: 210,
            //   width: 30,
            // ),

            //category
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red.withOpacity(1),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoreManageOrder()),
                        )
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                width: 170,
                                height: 170,
                                // color: Colors.red.withOpacity(0.7),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/cooking_list.jpg'))),
                              ),
                            ),
                            Positioned(
                                top: 120,
                                left: 38,
                                child: Text(
                                  'Đơn hàng',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoreManageOrder()),
                        )
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                width: 170,
                                height: 170,
                                // color: Colors.red.withOpacity(0.7),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/storageLogo.jpg'))),
                              ),
                            ),
                            Positioned(
                                top: 120,
                                left: 11,
                                child: Text(
                                  'Kho Nguyên Liệu',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 170,
                              height: 170,
                              // color: Colors.red.withOpacity(0.7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/storageLogo.jpg'))),
                            ),
                          ),
                          Positioned(
                              top: 120,
                              left: 11,
                              child: Text(
                                'Kho Nguyên Liệu',
                                style: TextStyle(fontSize: 18),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Text(
              'Đơn Mới',
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 20, color: Colors.red),
            ),
            //listNewOrder    ,

            Container(
              height: 300,
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: orderList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Order_item(
                    name: orderList[index]['name'],
                    price: double.parse(orderList[index]['price']),
                    address: orderList[index]['address'],
                    orderCode: orderList[index]['orderCode'],
                    time: DateTime.parse('${orderList[index]['time']}'),
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

class Order_item extends StatelessWidget {
  final String name;
  final String address;
  final double price;
  final DateTime time;
  final String orderCode;

  const Order_item(
      {Key? key,
      required this.name,
      required this.address,
      required this.price,
      required this.time,
      required this.orderCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StoreOderDetail()),
        );
      },
      child: Container(
        height: 70,
        margin: EdgeInsets.only(bottom: 10, top: 10),
        // padding:
        //     EdgeInsets.only(left: 2, top: 2, right: 2, bottom: 2),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.03),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200,
              height: 60,
              child: Stack(
                children: [
                  Positioned(
                    top: -6,
                    left: 5,
                    child: Text("$name", style: TextStyle(fontSize: 14)),
                  ),
                  Positioned(top: 12, left: 5, child: Text("$time",style: TextStyle(fontSize: 12),)),
                  Positioned(
                      top: 29,
                      left: 5,
                      child: Text(
                        "$address",
                        style: TextStyle(fontSize: 12),
                      )),
                  Positioned(
                      top: 46,
                      left: 5,
                      child: Text(
                        "Mã đơn hàng: $orderCode",
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red.withOpacity(0.5),
              ),
              width: 130,
              height: 70,
              child: Container(
                  padding: EdgeInsets.only(left: 25, top: 20),
                  child: Text(
                    '$priceđ',
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
