import 'package:flutter/material.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_images.dart';

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({super.key});

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Name and Notification Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Welcome back'), Text('Maruf Mobin'),]),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notification_add_sharp),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              //Banner Section are here
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 5
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.grey.shade400.withOpacity(0.5),
                    Colors.blue.shade400.withOpacity(0.5),
                  ], begin: Alignment.center),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Connect with Trusted Service Providers in Africa',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w600
                              ),),
                            SizedBox(height: 5,),
                            Text(
                              'From diaspora to home: Quality services, verified professionals, secure payments',
                              style: TextStyle(
                                  fontSize: 10
                              ),),
                            SizedBox(height: 5,),
                            GestureDetector(
                              onTap: () {},

                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 5
                                ),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.primaryColor
                                ),
                                child: Text(
                                  'Request a Service', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12
                                ),),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      AppImagePath.bannerImagePng,)
                  ],
                ),
              ),


              // GridView.builder(
              //   itemCount: 3,
              //   scrollDirection: Axis.vertical,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 3,
              //     childAspectRatio: 2,
              //     crossAxisSpacing: 10,
              //   ),
              //   itemBuilder: (context, index) =>
              //       Card(
              //         child: Text('Maruf'),
              //       ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
