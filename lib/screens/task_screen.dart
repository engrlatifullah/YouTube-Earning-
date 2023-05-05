import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdf_app/screens/youtube_chanel.dart';

import '../utils/colors.dart';
import 'coins.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.blackColor,
          title: const Text(
            "Starting",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          children: [
            InkWell(
              onTap: () {

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
                    Icon(FontAwesomeIcons.dollar,color: AppColor.yelloColor,size: 40,),

                    const SizedBox(height: 10,),
                    const Text(
                      "Start with 5",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.lightGreyColor),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.dollar,color: AppColor.yelloColor,size: 40,),

                    const SizedBox(height: 10,),
                    const Text(
                      "Start with 10",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {

              },
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.lightGreyColor),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.dollar,color: AppColor.yelloColor,size: 40,),

                    const SizedBox(height: 10,),
                    const Text(
                      "Start with 15",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
