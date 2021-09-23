import 'package:cookbook/Views/Pages/Store/store_order_detail.dart';
import 'package:cookbook/Views/Pages/product_detail/product_detail.dart';
import 'package:cookbook/Views/common/constants.dart';
import 'package:cookbook/Views/common/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StoreManageOrder extends StatefulWidget {
  @override
  _StoreManageOrderState createState() => _StoreManageOrderState();
}

class _StoreManageOrderState extends State<StoreManageOrder> {
  List orderList = [
    {
      'name': 'Trần Bá Sơn',
      'address': '216 Tân Kỳ Tân Quý, Tân Phú',
      'price': '420000',
      'time': '${DateTime.now().toString()}',
      'orderCode': '001',
      'status': '1'
    },
    {
      'name': 'Hồ Cẩm Đào',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '002',
      'status': '1'
    },
    {
      'name': 'Nguyễn Đăng Sáng',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '130000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '003',
      'status': '1'
    },
    {
      'name': 'Lê Tấn Trường',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '004',
      'status': '2'
    },
    {
      'name': 'Trần Văn Luân',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '005',
      'status': '2'
    },
    {
      'name': 'Hồ Văn Chí',
      'address': '14/9/38 Tân Kỳ Tân Quý, Tân Phú',
      'price': '120000',
      'time': '2021-09-23 08:41:21',
      'orderCode': '006',
      'status': '2'
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
              padding: EdgeInsets.only(left: 2, bottom: 5),
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

            Container(
              margin: EdgeInsets.only(top: 10, left: 40),
              child: Text(
                "Quản Lý Đơn Hàng",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),

            //Search order
            Container(
              padding: EdgeInsets.only(top: 20, left: 0, right: 0),
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10)),
                    ),
                    focusColor: Colors.red,
                    labelText: "Mã đơn hàng"),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CategoryTitleItem(
                    title: "Chưa hoàn thành",
                    active: true,
                  ),
                  CategoryTitleItem(
                    title: "Đã hoàn thành",
                    active: false,
                  ),
                  // CategoryTitleItem(
                  //   title: "Đã giao",
                  //   active: false,
                  // ),
                ],
              ),
            ),

            //listOrder    ,

            Container(
              height: 500,
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: orderList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Order_item(
                    status: int.parse(orderList[index]['status']),
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
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15),

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

class Order_item extends StatelessWidget {
  final String name;
  final String address;
  final double price;
  final DateTime time;
  final String orderCode;
  final int status;

  const Order_item(
      {Key? key,
      required this.name,
      required this.address,
      required this.price,
      required this.time,
      required this.orderCode,
      required this.status})
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
                color: status == 1
                    ? Colors.red.withOpacity(0.5)
                    : Colors.green.withOpacity(0.5),
              ),
              width: 130,
              height: 70,
              child: Container(
                  child: Align(
                alignment: Alignment.center,
                child: Text(
                  status == 1 ? 'Chưa hoàn thành' : 'Đã hoàn thành',
                  style: TextStyle(fontSize: 12),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
