import 'package:flutter/material.dart';
import 'package:remya_app/components/edit_button.dart';
import 'package:remya_app/components/edit_text.dart';
import 'package:remya_app/second_demo.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  late Size size;
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String? phone,password;
  bool loadingStatus = false;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Align(child: Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.bold),),alignment: Alignment.centerRight,),
                      ),
                      const Spacer(),
                      Image.asset('assets/images/login_ic.png',width: 231,height: 231,),
                      EditText(hintText: 'Phone',textController: phoneController,),
                      const SizedBox(
                        height: 10,
                      ),
                      EditText(hintText: 'Password',textController: passController,),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      EditButton(onClicked: (){
                        print("Phone : ${phoneController.text} pass : ${passController.text }" );
                        setState(() {
                          loadingStatus = true;
                        });
                          Future.delayed(const Duration(seconds: 2),(){
                            setState(() {
                              phone = phoneController.text;
                              password = passController.text;
                              loadingStatus = false;
                            });
                       });
                         Navigator.push(
                         context, MaterialPageRoute(builder: (context) => const SecondDemo()),
                         );
                      }, txt: "Submit"),
                      const SizedBox(
                        height: 15,
                      ),
                      Text("Phone : $phone Password: $password"),
                      const Spacer()
                    ],
                  ),
                ),
                Visibility(
                  visible: loadingStatus,
                  child: const Center(
                      child: CircularProgressIndicator()),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
    passController.dispose();
  }
}
