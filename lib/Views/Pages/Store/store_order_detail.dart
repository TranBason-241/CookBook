import 'package:cookbook/Views/Pages/product_detail/product_detail.dart';
import 'package:cookbook/Views/common/constants.dart';
import 'package:cookbook/Views/common/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoreOderDetail extends StatefulWidget {
  @override
  _StoreOderDetailState createState() => _StoreOderDetailState();
}

class _StoreOderDetailState extends State<StoreOderDetail> {
  List orderList = [
    {
      'name': 'Trần Bá Sơn',
      'address': '216 Tân Kỳ Tân Quý, Tân Phú',
      'price': '420000',
      'time': '${DateTime.now().toString()}',
      'orderCode': '001'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '002'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '130000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '003'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '004'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '005'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '006'
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
                  CustomIconButton(
                    icon: Icon(Icons.arrow_back,size: 28,color: Colors.white,),
                    onPressed: () => Navigator.of(context).pop(),
                    margin: EdgeInsets.all(0),
                    backgroundColor: Colors.red,
                    
                  ),
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
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "CHI TIẾT ĐƠN HÀNG",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  //chi tiet don hang
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.red.withOpacity(0.7), width: 2)),
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 100,
                            width: 375,
                            color: Colors.red.withOpacity(0.8),
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mã Đơn: 001',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '12h30 25/9/2021',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Trần Bá Sơn',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Địa chỉ: 276 Tây Thạnh, Tân Phú',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )),
                        //List dist
                        Container(
                          height: 370,
                          padding: EdgeInsets.only(top: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //card
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  // color: Colors.yellow,
                                  width: 350,
                                  // height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1. Gà Nướng muối',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Text("Số lượng: 1"),
                                      Text(
                                        "Nguyên liệu:",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Text("Gà:   "),
                                          Text('1500g'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Muối:   "),
                                          Text('100g'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("ớt:   "),
                                          Text('100g'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("hành:    "),
                                          Text('50g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("tỏi:    "),
                                          Text('50g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Đường:    "),
                                          Text('50g')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  // color: Colors.yellow,
                                  width: 350,
                                  // height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2. canh bí đỏ',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Text("Số lượng: 2"),
                                      Text(
                                        "Nguyên liệu:",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Text("Bí:    "),
                                          Text('500g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("thịt:    "),
                                          Text('300g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("hành:    "),
                                          Text('50g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("tỏi:    "),
                                          Text('50g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Đường:    "),
                                          Text('50g')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  // color: Colors.yellow,
                                  width: 350,
                                  // height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1. Thịt kho tiêu',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Text("Số lượng:1"),
                                      Text(
                                        "Nguyên liệu:",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Text("Thịt:      "),
                                          Text('500g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Tiêu:      "),
                                          Text('300g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Ớt:      "),
                                          Text('100g')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Tỏi:      "),
                                          Text('50g')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RaisedButton(
                          child: Text(
                            'XONG',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          color: Colors.green,
                        )
                      ],
                    ),
                  )
                ],
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
          MaterialPageRoute(builder: (context) => Product_detail_page()),
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
                  Positioned(
                      top: 12,
                      left: 5,
                      child: Text(
                        "$time",
                        style: TextStyle(fontSize: 12),
                      )),
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
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
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
