
import 'package:flutter/material.dart';
import 'package:remya_app/new_page.dart';

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
        title: Text("My App"),
        leading:
        Icon(Icons.arrow_back_outlined),
        actions: [
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
              Padding(
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
                    Spacer(),
                  const Icon(Icons.star,color: Colors.red,),
                  const Text("41"),
                  ],
                ),
              ),
              Padding(
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
                ),
              const Padding(
              padding: EdgeInsets.all(20),
                  child: Text("sdfghzgyaxghsxbkjbckjhkjshbdhcbkdhbc"
                      "dxfcxhghxjchvxhvzbnnnnnnxvxhbmcnbxncv xbn "
                      "szxdcfgvhbghfcxdcfgvhj vhbjnkb vvbnxc vvvvvvvvvvdcx"
                      "xdcfvgvgxcfgvhbjcfgvbhcfgvhbjfgvh"),
                ),
              GestureDetector(
                onTap: (){
                  print("hello world");
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const NewPage()),
                  );
                },
                child: Container(
                    width: 200,
                    decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.all(Radius.circular(40))),height: 50,
                    child: Center(child: Text("submit",style: TextStyle(color: Colors.white),))
                ),
              )
            ],
            ),
          ),
      ),



    );
  }
}
