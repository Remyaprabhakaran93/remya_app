import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remya_app/components/edit_button.dart';
import 'package:remya_app/components/edit_text.dart';
import 'package:remya_app/second_home_page.dart';

class SecondDemo extends StatefulWidget {
  const SecondDemo({Key? key}) : super(key: key);

  @override
  State<SecondDemo> createState() => _SecondDemoState();
}

class _SecondDemoState extends State<SecondDemo> {
  late Size size;
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController pinController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children:[
                 const Padding(
                   padding: EdgeInsets.all(10),
                   child: Align(child: Text("SIGN IN",style: TextStyle(fontWeight: FontWeight.bold),),alignment: Alignment.centerRight,),
                 ),
              const Spacer(),
              Image.asset('assets/images/signup_ic.png',width: 400,height: 300,),
             EditText(hintText: 'Name', textController: nameController),
              const SizedBox(
                height: 10,
              ),
              EditText(hintText: 'Phone', textController: phoneController),
              const SizedBox(
                height: 10,
              ),
              EditText(hintText: 'Password', textController: passwordController),
              const SizedBox(
                height: 10,
              ),
              EditText(hintText:'Pin', textController: pinController),
              const SizedBox(
                height: 80,
              ),
              EditButton(onClicked:(){
                Navigator.push(context ,MaterialPageRoute(builder: (context)=> const SecondHomePage()),
                );
              }, txt: "Submit",)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    pinController.dispose();
  }

}
