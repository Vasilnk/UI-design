import 'package:flutter/material.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({super.key});

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  bool light = false;
  List<dynamic> photos = [
    'images/images.jpeg',
    'images/images (1).jpeg',
    'images/images (2).jpeg',
    'images/images (3).jpeg',
    'images/images (4).jpeg',
    'images/images (5).jpeg',
    'images/images (6).jpeg',
    'images/images (7).jpeg',
  ];

  List<String> titles = [
    'Couch Potato| Women...',
    'Couch Potato| Men|Bl..',
    'Mug | Explore',
    'Combo Blahst 1 | Pack..',
    'Mug | Orchard',
    'Combo Blahst 2 | Explo..',
    'I See Combo pack',
    'Kids Combo Blahst'
  ];
  List<String> prices = [
    '₹799',
    '₹799',
    '₹399',
    '₹699',
    '₹449',
    '₹599',
    '₹1,299',
    '₹1,199'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 231, 230, 230),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              title: const Text('Catalogue'),
              actions: const [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
              ],
              bottom: const TabBar(
                tabs: [
                  Text(
                    'Products',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(color: Colors.white),
                  )
                ],
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                indicatorColor: Colors.white,
                labelPadding: EdgeInsets.only(bottom: 10),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TabBarView(
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 5,
                      childAspectRatio: 2.5),
                  itemBuilder: (context, index) {
                    return GridTile(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 85,
                                    width: 80,
                                    child: Image.asset(
                                      photos[index],
                                      width: 90,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(titles[index]),
                                        const Text('1 piece'),
                                        Text(prices[index]),
                                        const Row(
                                          children: [
                                            Text(
                                              'In stock',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 3),
                                  SizedBox(
                                    height: 90,
                                    child: Column(
                                      children: [
                                        const Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(Icons.more_vert),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 18,
                                        ),
                                        Transform.scale(
                                            scaleY: 0.6,
                                            scaleX: 0.8,
                                            child: Switch(
                                                value: light,
                                                onChanged: (value) {
                                                  setState(() {
                                                    light = value;
                                                  });
                                                }))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Divider(
                                color: Colors.grey,
                                thickness: 1,
                                height: 12,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.share_outlined),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text('Share Product')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
                  },
                  itemCount: 8,
                ),
                const Center(child: Text('No data'))
              ],
            ),
          ),
        ));
  }
}
