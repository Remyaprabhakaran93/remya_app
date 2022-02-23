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
    size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(

        title:const Text("My Project"),
        leading: const Icon(Icons.arrow_back_rounded),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.notifications),
          Icon(Icons.shopping_cart),
        ],
        backgroundColor: Colors.pinkAccent,
        elevation: 10,
      ),

      body: SizedBox(
        width:size.width,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Image.network("https://media.cntraveller.com/photos/611bf0b8f6bd8f17556db5e4/16:9/w_2992,h_1683,c_limit/gettyimages-1146431497.jpg",
              height: 200,width: size.width,
            fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                    Text('Oeschinen Lake Campgroun', style:TextStyle(fontWeight: FontWeight.bold,color: Colors.red)),
                    SizedBox(height: 10,),
                    Text('Kandersteg, Switzerland'),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.star,color: Colors.red),
                  const Text("41"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.call),
                      SizedBox(height: 10,),
                      Text("CALL"),
                    ],
                  ),
                  Column(
                    children:  const [
                      Icon(Icons.account_balance_outlined),
                      SizedBox(height: 10,),
                      Text("ROUTE"),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.share),
                      SizedBox(height: 10,),
                      Text("SHARE"),
                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: const Text("Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese"
                  " Alps Situated 1,578 meters above sea level, it is one of the larger"
                  " Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures "
                  "and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. "
                  "Activities enjoyed here include rowing, and riding the summer toboggan run."),
            ),
          ],
        ),
        ),

    );
  }
}
