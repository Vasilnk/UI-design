import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  List<String> words = [
    'marketing \nDdesigns',
    'online\npayments',
    'Discount\nCoupons',
    'my\nCustomers',
    'Store QR\nCode',
    'Extra\nChanges',
    'Order\nForm'
  ];

  List<IconData> icons = [
    Icons.campaign,
    Icons.currency_rupee_rounded,
    Icons.local_offer,
    Icons.people_outline,
    Icons.qr_code_scanner,
    Icons.currency_rupee_sharp,
    Icons.receipt,
  ];
  List<dynamic> colors = [
    Colors.orange,
    Colors.green,
    const Color.fromARGB(255, 240, 178, 7),
    const Color.fromARGB(255, 12, 129, 104),
    const Color.fromARGB(255, 78, 77, 77),
    const Color.fromARGB(255, 66, 41, 110),
    const Color.fromARGB(255, 122, 64, 91),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 230, 230),
      appBar: AppBar(
        title: const Text('Manage Store'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            if (index == 6) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 34,
                            decoration: BoxDecoration(
                                color: colors[index],
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(
                                color: Colors.white,
                                icons[index],
                                size: 25,
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(3)),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                'New',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(words[index])
                    ],
                  ),
                ),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 34,
                        decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            color: Colors.white,
                            icons[index],
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(words[index])
                    ],
                  ),
                ),
              );
            }
          },
          itemCount: 7,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          currentIndex: 3,
          selectedItemColor: const Color.fromARGB(255, 27, 110, 179),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: 'Products'),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.cubesStacked), label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Account')
          ]),
    );
  }
}
