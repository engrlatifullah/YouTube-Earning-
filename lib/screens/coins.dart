import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdf_app/screens/task_screen.dart';
import 'package:pdf_app/widget/reusable_button.dart';

import '../utils/colors.dart';

class Coins extends StatelessWidget {
  const Coins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: AppColor.blackColor,
            title: const Text(
              "Coins",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ReusableButton(
                title: "Collect Coins",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        icon: Icon(FontAwesomeIcons.coins,size: 50,color: AppColor.yelloColor,),
                        content: const Text(
                          "Congratulations Collect coins",
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
                filled: true,
              ),
            ),
          )),
    );
  }
}
