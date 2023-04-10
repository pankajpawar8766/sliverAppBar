//sliver AppBar

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(sliver());
}

class sliver extends StatelessWidget {
  const sliver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              
              backgroundColor: Colors.green,
              pinned: true,
              expandedHeight: 200.0,
              leading: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.phone_callback,
                  color: Colors.red,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Sliver AppBar'),
                background: Image.asset(
                  'lib/asset/image/Contact.jpg',
                  fit: BoxFit.fill,
                ),
                centerTitle: true,
              ),
            ),

  SliverList(delegate:SliverChildBuilderDelegate((context, index) =>

  ListTile(

  leading: Icon(Icons.person,color: Colors.green,),
   trailing: Icon(Icons.call,color: Colors.green,),
   title: Text('Person $index',),
subtitle:Text('23467583829'),
  ),

  ),
  ),
            // SliverToBoxAdapter(
            //   child: ListView.builder(
            //     itemCount: 40,
            //     itemBuilder: (BuildContext context, int index) {
            //       return ListTile(
            //         leading: Icon(Icons.flutter_dash_outlined),
            //         trailing: Icon(
            //           Icons.call,
            //           color: Colors.green,
            //         ),
            //         title: Text('Person $index'),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
