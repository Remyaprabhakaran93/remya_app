import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    List<String> itemList = ["hello","hai","how are you"];
    return Scaffold(
      body: ListView.builder(itemBuilder: (_,index){
            return ListTile(
              leading: Icon(Icons.account_balance_outlined),
              title: Text(itemList[index]),subtitle: Text("sdasdadasd"),onTap: (){
                print(index);
            },
            );
          },itemCount: itemList.length,)

    );
  }
}
