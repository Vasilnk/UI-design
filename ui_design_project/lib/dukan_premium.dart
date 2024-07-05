import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DukanPremium extends StatefulWidget {
  DukanPremium({super.key});

  @override
  State<DukanPremium> createState() => _DukanPremiumState();
}

class _DukanPremiumState extends State<DukanPremium> {
  final vedioURL = 'https://www.youtube.com/watch?v=lHhRhPV--G0';
  late YoutubePlayerController controller;
  bool showText = false;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(vedioURL);
    controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
    super.initState();
  }

  final boxdecor = BoxDecoration(
      border: Border.all(color: Colors.green, width: 2),
      borderRadius: BorderRadius.circular(40));

  final lightbold = const TextStyle(color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 242, 242),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          title: const Text('Dukaan Premium'),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: const Color.fromARGB(255, 42, 89, 143),
                  height: 50,
                  width: double.infinity,
                ),
                Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/dukan image.png'),
                        const Text(
                          'Get Dukaan Premium for just ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const Text('₹4,999/year',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        const Text(
                            'All the advanced feautures for scaling your',
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        const Text('business',
                            style: TextStyle(fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Features'),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: boxdecor,
                          child: const Icon(Icons.blur_circular_outlined)),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Customer domain name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Get your own customer domain and build \n your brand on the internet',
                            style: lightbold,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: boxdecor,
                          child: const Icon(Icons.check_circle_outline_sharp)),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'verified seller badge ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Get greenverified badge under your \n store name and build trust',
                            style: lightbold,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: boxdecor,
                          child: const Icon(Icons.laptop_chromebook_sharp)),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dukaan for PC',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Access all the exclusive premium\n features on Dukaan for PC',
                            style: lightbold,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: boxdecor,
                          child: const Icon(Icons.headset_mic_outlined)),
                      const SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Priority support ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Get your questions resolved with our \npriority customer support',
                            style: lightbold,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What is Dhukaan Premium?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 100, 210, 218),
                        borderRadius: BorderRadius.circular(7)),
                    height: 130,
                    width: double.infinity,
                    child: YoutubePlayer(
                      controller: controller,
                      showVideoProgressIndicator: true,
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Frequently asked questions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'What types of business can use Dukaan \nPremium?',
                      )),
                      IconButton(
                        icon: Icon(showText ? Icons.remove : Icons.add),
                        onPressed: () {
                          setState(() {
                            showText = !showText;
                          });
                        },
                      )
                    ],
                  ),
                  if (showText)
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Dukaan caters to a wide variety of sellers.Be it a \nsmall grocery store or a big legacy brand-anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  const Divider(),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'What is your refund policy?',
                      )),
                      Icon(Icons.add),
                    ],
                  ),
                  const Divider(),
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                              'Will there be an automatic charge after the \npaid trial?')),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(),
                  const Row(
                    children: [
                      Expanded(
                          child: Text('What payment methods do you offer?')),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(),
                  const Row(
                    children: [
                      Expanded(
                          child: Text('What happens when my free trial ends?')),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(),
                  const Row(
                    children: [
                      Expanded(
                          child: Text(
                              'What are the terms for the custom domain?')),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider()
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Need help? Get in touch',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black38)),
                        child: const Column(
                          children: [
                            Icon(Icons.chat_bubble_outline),
                            Text('Live Chat')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black38)),
                        child: const Column(
                          children: [
                            Icon(Icons.phone_outlined),
                            Text('Phone Call')
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        '  Select Domain',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 35, 118, 173)),
                      )),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 35, 118, 173))),
                      child: const Text(
                        '       Get Premium      ',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
