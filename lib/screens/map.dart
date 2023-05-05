import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pdf_app/utils/text_style.dart';

import '../utils/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MapScreen extends StatelessWidget {
  // const MapScreen({Key? key}) : super(key: key);

  final List<String> userNames = [
    "Ramzan",
    "Latif",
    "Basir",
    "Hamad",
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.blackColor,
          title: const Text(
            "Map",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SfCartesianChart(
                    primaryXAxis: CategoryAxis(),


                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          dataSource:  <SalesData>[
                            SalesData('Jan', 35),
                            SalesData('Feb', 28),
                            SalesData('Mar', 34),
                            SalesData('Apr', 32),
                            SalesData('May', 40)
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales,
                          // Enable data label
                          dataLabelSettings: DataLabelSettings(isVisible: true)
                      )
                    ]
                ),

                const SizedBox(height: 20,),
                const Text("User Under You",style: AppStyle.boldStyle,),
                const SizedBox(height: 10,),
                ...List.generate(userNames.length, (index){
                  return Card(
                    elevation: 6,
                    margin: const EdgeInsets.only(bottom: 10),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/im.jpg"))
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Text(userNames[index],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),

                        ],
                      ),
                    )
                  );
                })

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
