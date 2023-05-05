import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdf_app/screens/youtube_chanel.dart';
import 'package:pdf_app/widget/reusable_button.dart';
import 'package:pdf_app/widget/reusable_textFormField.dart';

import '../utils/colors.dart';
import 'coins.dart';

class ExchangeCoinsVocher extends StatelessWidget {
  const ExchangeCoinsVocher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.blackColor,
          title: const Text(
            "Exchange Coins Vocher",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const YouTubeChanel();
                      }),);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.lightGreyColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.tableList,color: AppColor.yelloColor,size: 40,),

                          const SizedBox(height: 10,),
                          const Text(
                            "Subscribe Chanels",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const YouTubeChanel();
                      }),);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.lightGreyColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.video,color: AppColor.yelloColor,size: 40,),

                          const SizedBox(height: 10,),
                          const Text(
                            "Watch Videos",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const Coins();
                      }),);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.lightGreyColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.solidThumbsUp,color: AppColor.yelloColor,size: 40,),

                          const SizedBox(height: 10,),
                          const Text(
                            "Like Videos",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              ReusableTextFormField(
                hintText: "Enter Coins",
                suffixIcons: TextButton(
                  onPressed: (){},
                  child: Text(
                    "Max",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColor.yelloColor),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ReusableButton(title: "Collect Vocher",onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      icon: Icon(FontAwesomeIcons.gift,size: 50,color: AppColor.yelloColor,),
                      content: const Text(
                        "Congratulations \n You got 3 Vocher",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      actions: [
                        ReusableButton(
                          title: "Done",
                          filled: true,
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  },
                );
              },
                filled: true,),
            ],
          ),
        ),
      ),
    );
  }
}
