import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_design_project/catalogue.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({Key? key}) : super(key: key);

  final bold = const TextStyle(fontWeight: FontWeight.bold);
  List<String> amount = [
    '799',
    '397.4',
    '686.42',
    '1123.5',
    '1722.75',
    '884.17',
    '599.25',
    '2,297',
    '599.25',
    '524.25',
    '699',
    '1123.5',
    '799',
    '524.25',
    '524.25',
  ];
  final stylegrey = TextStyle(color: Colors.grey[600]);
  List<String> orderNumber = [
    '1688068',
    '1457741',
    '1408896',
    '1369633',
    '1370125',
    '1370568',
    '1359971',
    '1265103',
    '1173537',
    '1173537',
    '1176731',
    '117245',
    '1177731',
    '1174282',
    '1164892',
  ];
  List<String> images = [
    'images/images.jpeg',
    'images/images (1).jpeg',
    'images/images (7).jpeg',
    'images/images (6).jpeg',
    'images/images (3).jpeg',
    'images/images.jpeg',
    'images/images (5).jpeg',
    'images/images (6).jpeg',
    'images/images.jpeg',
    'images/images (7).jpeg',
    'images/images (7).jpeg',
    'images/images (6).jpeg',
    'images/images (3).jpeg',
    'images/images.jpeg',
    'images/images (5).jpeg',
  ];

  final CataloguePage photos1 = const CataloguePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 243, 243),
      appBar: AppBar(
        title: const Text('Payments'),
        actions: const [
          FaIcon(FontAwesomeIcons.circleExclamation),
          SizedBox(width: 5),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Transaction Limit', style: bold),
                    Text(
                      'A free limit up to which you will receive',
                      style: stylegrey,
                    ),
                    Text('the online payments directly in your bank',
                        style: stylegrey),
                    LinearProgressIndicator(
                      value: 0.3,
                      semanticsLabel: "Linear progress indicator",
                      backgroundColor: Colors.grey[300],
                    ),
                    Text('36,668 Out of ₹50,000', style: stylegrey),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 42, 89, 143),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Text(
                        'Increase limit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Expanded(child: Text('Default Method')),
                Text('Online Payments', style: stylegrey),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Expanded(child: Text('Payment profile')),
                Text('Bank Account', style: stylegrey),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Payment Overview',
                    style: bold,
                  ),
                ),
                Text('Life Time', style: stylegrey),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 17,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AMOUNT ON HOLD',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        '₹0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AMOUNT RECEIVED',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        '₹13,332',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Transactions',
              style: bold,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(110, 10)),
                      foregroundColor:
                          MaterialStatePropertyAll(Colors.grey[700]),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey[300])),
                  onPressed: () {},
                  child: const Text('On hold')),
              TextButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(110, 10)),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 42, 89, 143))),
                  onPressed: () {},
                  child: const Text('Payouts(15)')),
              TextButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(110, 10)),
                      foregroundColor:
                          MaterialStatePropertyAll(Colors.grey[700]),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.grey[300])),
                  onPressed: () {},
                  child: const Text('Refunds'))
            ]),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    // color: Colors.blue,
                                    child: Image.asset(images[index]),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    'Order #${orderNumber[index]}',
                                    style: bold,
                                  ),
                                  Text('Jul 12, 02:06 PM', style: stylegrey),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '₹${amount[index]}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 106, 164, 212)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.circle,
                                      size: 12,
                                      color: Colors.green,
                                    ),
                                    const SizedBox(width: 4),
                                    Text('Successful', style: stylegrey),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '₹${amount[index]}deposited to: 58860200000138',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'NotoSerif',
                              color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
