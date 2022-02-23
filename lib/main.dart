import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);





  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(

        title:const Text("My Project"),
        leading: const Icon(Icons.arrow_back_rounded),
        actions: const [
          Icon(Icons.account_balance_outlined),
          Icon(Icons.notifications),
          Icon(Icons.shopping_cart),
        ],
        backgroundColor: Colors.pinkAccent,
        elevation: 10,
      ),

      body: SizedBox(
        width:size.width,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("https://media.cntraveller.com/photos/611bf0b8f6bd8f17556db5e4/16:9/w_2992,h_1683,c_limit/gettyimages-1146431497.jpg"),
            Row(
              children: [
                Column(
                  children:const [
                  Text('Oeschinen Lake Campground'),
                  Text('Kandersteg, Switzerland'),
                  ],
                ),
                Icon(Icons.star),
                Text("41"),
              ],
            )

          ],
        ),
        ),

    );
  }
}
