import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            // Name and Notification Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [Text('Welcome back'), Text('Maruf Mobin')]),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notification_add_sharp),
                ),
              ],
            ),
            SizedBox(height: 20,),
            //Banner Section are here
            Stack(
              children: [
                Image.asset(AppImagePath.bannerImagePng, fit: BoxFit.cover,),
                // Text('Connect with Trusted Service Providers in Africa'),
                // Text(
                //   'From diaspora to home: Quality services, verified professionals, secure payments',
                // ),
                // CustomButton(onTap: () {}, title: 'Request a Service'),
              ],
            ),
            Text('Our Services'),
            // GridView.builder(
            //   itemCount: 3,
            //   scrollDirection: Axis.vertical,
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
