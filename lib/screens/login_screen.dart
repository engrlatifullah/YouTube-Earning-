
import 'package:flutter/material.dart';
//
import '../utils/text_style.dart';
import '../widget/reusable_button.dart';
import '../widget/reusable_textFormField.dart';
import 'menu_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Text(
                      "Welcome\nPlease LogIn first",textAlign: TextAlign.center,style: AppStyle.boldStyle,
                    ),

                    const SizedBox(height: 10,),
                    const Spacer(),
                    Form(child: Column(
                      children: [
                        const ReusableTextFormField(
                          hintText: "Email",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                        const SizedBox(height: 10,),
                         ReusableTextFormField(
                          hintText: "Password",

                           textInputAction: TextInputAction.done,
                          isPass: isPass,
                          suffixIcons: InkWell(
                              onTap: (){
                                setState(() {
                                  isPass = !isPass;
                                });
                              },
                              child: Icon(isPass ? Icons.visibility :Icons.visibility_off)),
                          keyboardType: TextInputType.emailAddress,
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                        const SizedBox(height: 20,),
                         ReusableButton(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                               return const MenuScreen();
                             }));
                           },
                          title: 'LogIn',filled: true,),

                      ],
                    ),),
                    const Spacer(),
                    const SizedBox(height: 10,),
                     ReusableButton(
                       onTap: (){
                         Navigator.pop(context);
                       },
                       title: 'Create an Account',),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
