import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderPage extends StatelessWidget {
  OrderPage({super.key});
  final bold = TextStyle(fontWeight: FontWeight.bold);
  final boldAndGrey =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #1688068'),
      ),
      body: Padding(
        padding: EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'May 31, 05:42 PM',
                  style: bold,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delivered',
                      style: boldAndGrey,
                    )
                  ],
                ),
              ],
            ),
            Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('1 ITEM'),
                Row(
                  children: [
                    Icon(
                      Icons.list_alt_sharp,
                      color: Color.fromARGB(255, 12, 110, 81),
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'RECEIPT',
                      style: TextStyle(
                          color: Color.fromARGB(255, 12, 110, 81),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  child: Image.asset('images/images.jpeg'),
                  height: 80,
                  width: 80,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Explore | Men | Navy Blue'),
                    Text('1 piece'),
                    Text('Size: XL'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[100],
                              border: Border.all(color: Colors.blue)),
                          height: 20,
                          width: 25,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text('1'),
                          ),
                        ),
                        Text(' x ₹799'),
                        SizedBox(
                          width: 125,
                        ),
                        Text('₹799'),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('item Total'), Text('₹799')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery'),
                Text(
                  'FREE',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹799',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CUSTEMER DETAILS',
                  style: boldAndGrey,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Color.fromARGB(255, 12, 110, 81),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(
                          color: Color.fromARGB(255, 12, 110, 81),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Deepa', style: bold),
                      Text('+91-7829000484')
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color.fromARGB(255, 12, 110, 81), width: 3)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.phone,
                      size: 12,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                FaIcon(FontAwesomeIcons.whatsapp)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('Address', style: bold),
            Text('D 1101 Chartered Beverly'),
            Text('Hills ,subramanyapura P.O'),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City',
                      style: bold,
                    ),
                    Text('Banglore'),
                    Text('Payment', style: bold),
                    Text('Online')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Pincode',
                      style: bold,
                    ),
                    Text('560061'),
                    SizedBox(
                      height: 38,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.green[200],
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            'PAID',
                            style: TextStyle(
                                color: Colors.green[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                )
              ],
            ),
            Divider(),
            Text('ADDITIONAL INFORMATION', style: boldAndGrey),
            SizedBox(
              height: 10,
            ),
            Text('state', style: bold),
            Text('Karnataka'),
            SizedBox(
              height: 10,
            ),
            Text('Email', style: bold),
            Text('greeniceaqua@gmail.com'),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 35,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 34, 114, 184))),
              child: Center(
                  child: Text(
                'Share receipt',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 12, 110, 81),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
