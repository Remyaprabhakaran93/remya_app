import 'package:flutter/material.dart';

class SecondHomePage extends StatefulWidget {
  const SecondHomePage({Key? key}) : super(key: key);

  @override
  _SecondHomePageState createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Cart"),
        leading:const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.notifications),
          Icon(Icons.shopping_cart),
        ],
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 10,
      ),
      body: Row(

        children:[
          Container(
            width: 350,
            child: Column(
              children: [
                const Text("Strawberry Pavlova"),
                const SizedBox(height:10),
                const Text("A pancake is a flat cake, often thin and round, "
                    "prepared from a starch-based batter that may contain eggs, milk and butter and "
                    "cooked on a hot surface such as a griddle or frying pan, often frying with oil or butter."
                    " It is a type of batter bread. "),
                Padding(
                  padding:  const EdgeInsets.all(25),
                  child: Row(
                    children:  const [
                      Icon(Icons.star_rate),
                      Text("170 Reviews"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.book),
                          Text("Prep:"),
                          Text("25 mins"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.timelapse_outlined),
                          Text("Cook:"),
                          Text("1 hr"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.person),
                          Text("Feeds:"),
                          Text("4-6"),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

          Expanded(child:
          Image.network("https://www.mashed.com/img/gallery/basic-homemade-pancake-recipe/intro-1623681422.jpg",fit: BoxFit.cover,height: size.height,),
          ),
        ],
      ),

    );
  }
}
