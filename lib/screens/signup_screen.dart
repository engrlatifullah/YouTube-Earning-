import 'package:flutter/material.dart';
import 'package:pdf_app/utils/colors.dart';
import 'package:pdf_app/utils/text_style.dart';
import 'package:pdf_app/widget/socialicon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/reusable_button.dart';
import '../widget/reusable_textFormField.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isPass = true;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 10,),
                const FittedBox(
                  child: Text(
                    "SignUp",
                    textAlign: TextAlign.center,
                    style: AppStyle.boldStyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.add_a_photo),
                ),

                const SizedBox(height: 10,),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      ReusableTextFormField(
                        controller: _nameController,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "Please enter your full name";
                          }  else {
                            return null;
                          }
                        },
                        hintText: "Full Name",
                        textInputAction: TextInputAction.next,
                        prefixIcon: const Icon(Icons.person),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableTextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.number,
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "Please enter your phone number";
                          }  else {
                            return null;
                          }
                        },
                        hintText: "Phone Number",
                        textInputAction: TextInputAction.next,
                        prefixIcon: const Icon(Icons.phone),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableTextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email address';
                          } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        hintText: "Email",
                        textInputAction: TextInputAction.next,
                        prefixIcon: const Icon(Icons.email),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ReusableTextFormField(
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "password should not be null";
                          } else {
                            return null;
                          }
                        },
                        hintText: "Password",
                        textInputAction: TextInputAction.next,
                        isPass: isPass,
                        suffixIcons: InkWell(
                            onTap: () {
                              setState(() {
                                isPass = !isPass;
                              });
                            },
                            child: Icon(isPass
                                ? Icons.visibility
                                : Icons.visibility_off)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusableButton(
                        onTap: () {},
                        title: 'Create an Account',
                        filled: true,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return  const LoginScreen();
                      }));
                    }, child: const Text("Login"),)
                  ],
                ),
                const SizedBox(height: 20,),
                const SocialIcon(
                  icon: Icon(FontAwesomeIcons.google,color: AppColor.redColor,),
                  title: "SignUp with Google",
                ),
                const SizedBox(height: 20,),
                const SocialIcon(
                  icon: Icon(FontAwesomeIcons.facebook,color: AppColor.blueColor,),
                  title: "SignUp with Facebook",
                ),
                const SizedBox(height: 10,),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
