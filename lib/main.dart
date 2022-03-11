import 'package:flutter/material.dart';
import 'package:remya_app/components/edit_button.dart';
import 'package:remya_app/demo_page.dart';
import 'package:remya_app/second_home_page.dart';

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
        title: const Text("My App"),
        leading:
        const Icon(Icons.arrow_back_outlined),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.add_shopping_cart),
        ],
        backgroundColor: Colors.pinkAccent,
        elevation: 10,
      ),

      body:SafeArea(
        child: SizedBox(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Image.network("https://media.cntraveller.com/photos/611bf0b8f6bd8f17556db5e4/16:9/w_2992,h_1683,c_limit/gettyimages-1146431497.jpg", height: 300,width: 500,fit: BoxFit.fitWidth),
              topRow(),
              iconRows(),
              const Padding(
              padding: EdgeInsets.all(20),
                  child:  Text("sdfghzgyaxghsxbkjbckjhkjshbdhcbkdhbc"
                      "dxfcxhghxjchvxhvzbnnnnnnxvxhbmcnbxncv xbn "
                      "szxdcfgvhbghfcxdcfgvhj vhbjnkb"),
                ),
              EditButton(onClicked:(){
                print("hello world");
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const DemoPage()),
                );
              },  txt:"Submit",btnClr: Colors.pink,)
            ],
            ),
          ),
      ),



    );
  }

  Widget topRow(){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              Text("Ireland",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20)),
              Text("Dublin"),
            ],
          ),
          const Spacer(),
          const Icon(Icons.star,color: Colors.red,),
          const Text("41"),
        ],
      ),
    );
  }

  Widget iconRows(){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: (){
              print("hi");
            },
            behavior: HitTestBehavior.opaque,
            child: Column(
              children:const [
                Icon(Icons.call,color: Colors.blue),
                SizedBox(height: 15),
                Text("CALL"),
              ],
            ),
          ),
          Column(
            children:const [
              Icon(Icons.seven_k,color: Colors.blue),
              SizedBox(height: 15),
              Text("ROUTE"),
            ],
          ),
          Column(
            children:const [
              Icon(Icons.share,color: Colors.blue),
              SizedBox(height: 15),
              Text("SHARE"),
            ],
          ),
        ],
      ),
    );
  }
}
