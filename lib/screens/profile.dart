import 'package:flutter/material.dart';
import 'package:pdf_app/utils/colors.dart';
import 'package:pdf_app/widget/reusable_textFormField.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor:  AppColor.blackColor,
          title: const Text("Profile",style: TextStyle(
              fontWeight: FontWeight.w700
          ),),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/im.jpg"), fit: BoxFit.cover),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 200, right: 20, left: 20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(5),
                    ),
                    color: AppColor.whiteColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    // buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.blackColor),
                          child: Row(
                            children: const [
                              Icon(FontAwesomeIcons.edit,size: 25,color: AppColor.whiteColor,),
                              SizedBox(width: 20,),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: AppColor.whiteColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.blackColor),
                          child: Row(
                            children:  [
                               Icon(FontAwesomeIcons.coins,size: 25,color: AppColor.whiteColor,),
                              const SizedBox(width: 20,),
                               const Text(
                                "10",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: AppColor.whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 40,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.blackColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "E-Wallet",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: AppColor.whiteColor),
                          ),
                          Icon(Icons.arrow_forward_ios,color: AppColor.whiteColor,)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColor.blackColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ReusableTextFormField(
                      prefixIcon: Icon(Icons.person),
                      initialValue: "Asad Ullah",),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableTextFormField(
                      prefixIcon: Icon(Icons.phone),
                      initialValue: "0318-1111111",),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableTextFormField(
                      prefixIcon: Icon(Icons.email),
                      initialValue: "abc@gmail.com",),
                  ],
                ),
              ),
              //Profile Picture
              Positioned(
                left: 0,
                right: 0,
                top: 100,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.whiteColor, width: 2),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/im.jpg"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
