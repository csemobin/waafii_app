
import 'package:flutter/material.dart';
import 'package:waafii/utils/app_colors.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  bool buttonStatus = true;

  int selectedButton = 0;

  List<String> statusTexList = ["Active Status", "Complete"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Service'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonStatus
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                      ),
                      onPressed: () {
                        setState(() {
                          buttonStatus = false;
                        });
                      },
                      child: Text(
                        'Active Service',
                        style: TextStyle(
                          color: buttonStatus ? Colors.white : Colors.black,
                        ),
                      ),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          buttonStatus = true;
                        });
                      },
                      child: Text(
                        'Complete',
                        style: TextStyle(
                          color: buttonStatus ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
            ],
          ),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                2,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedButton = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 30,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: selectedButton == index
                          ? AppColors.secondaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      statusTexList[index],
                      style: TextStyle(
                        color: selectedButton == index
                            ? Colors.white
                            : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Divider(),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                selectedButton == 0 ?          Center(
                  child: Text(
                    'MARUF',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ) :          Center(
                  child: Text(
                    'RAKIB VHAI',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.blue),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
