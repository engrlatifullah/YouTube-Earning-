import 'package:flutter/material.dart';
import 'package:pdf_app/utils/colors.dart';

import '../widget/post_card.dart';

class YouTubeChanel extends StatelessWidget {
  const YouTubeChanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor:  AppColor.blackColor,
        title: Text("Chanels",style: TextStyle(
          fontWeight: FontWeight.w700
        ),),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (_, index) {
          return PostCard();
        }),
      ),
    );
  }
}
