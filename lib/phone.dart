// create a mobile app


import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(phone());
}

class phone extends StatelessWidget {
  const phone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('WhatsApp'),
            collapsedHeight: 110,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            flexibleSpace: FlexibleSpaceBar(
                title: Row(children: [
              Icon(Icons.group, size: 20, color: Colors.white),
              SizedBox(
                width: 13,
              ),
              Text(
                'Chat',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                'Group',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                'Status',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                'Calls',
                style: TextStyle(fontSize: 18),
              ),
            ])),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
              IconButton(onPressed: () {}, icon: Icon(Icons.wifi)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                  title: Text('Ashish Shinde '),
                  subtitle: Text('87459615'),
                  leading: Image.asset('lib/asset/image/flutter.jpg'),
                  trailing: Text('10.10'));
            },
          )),
        ]),
      ),
    );
  }
}
