import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Additional Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(children: [
          ListTile(
            leading: Icon(
              Icons.share_outlined,
            ),
            title: Text('Share Dukaan App'),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.chat_bubble_outline_sharp,
            ),
            title: Text('change Language '),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.whatsapp,
              // size: 50.0,
            ),
            title: Text('WhatsApp Chat Support'),
            trailing: Transform.scale(
              scaleY: 0.8,
              child: Switch(
                value: light,
                onChanged: (value) {
                  setState(() {
                    light = value;
                  });
                },
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.lock_outline_sharp,
            ),
            title: Text('Privacy policy'),
          ),
          ListTile(
            leading: Icon(
              Icons.star_border,
            ),
            title: Text('Rate Us '),
          ),
          ListTile(
            leading: Icon(
              Icons.logout_rounded,
            ),
            title: Text('Sign Out'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('version'),
                Text('2.4.2'),
                Text(''),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
