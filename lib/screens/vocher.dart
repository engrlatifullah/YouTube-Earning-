import 'package:flutter/material.dart';
import 'package:pdf_app/screens/task_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/colors.dart';
import 'exchange_coins_vocher.dart';

class Vocher extends StatelessWidget {
  const Vocher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.blackColor,
          title: const Text(
            "Vocher",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: GridView(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10),
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const ExchangeCoinsVocher();
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
                    Icon(FontAwesomeIcons.coins,color: AppColor.yelloColor,size: 40,),
                    SizedBox(height: 10,),
                    const Text(
                      "Exchange coins to vouchers",textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const TaskScreen();
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
                    Icon(FontAwesomeIcons.arrowRight,color: AppColor.yelloColor,size: 40,),

                    SizedBox(height: 10,),
                    const Text(
                      "Start in Voucher",textAlign: TextAlign.center,
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
