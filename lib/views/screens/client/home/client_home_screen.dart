import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/utils/app_icons.dart';
import 'package:waafii/utils/app_images.dart';

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({super.key});

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  final List<Map<String, String>> _ourServices = [
    {'icon': AppIcons.homeSvg, 'name': 'Construction & Renovation'},
    {'icon': AppIcons.giftboxSvg, 'name': 'Shopping Assistance'},
    {'icon': AppIcons.documentationSvg, 'name': 'Document Handling'},
    {'icon': AppIcons.cleanUpSvg, 'name': 'Home \n Cleaning'},
    {'icon': AppIcons.waterTapSvg, 'name': 'Plumbing & Electrical'},
    {'icon': AppIcons.chatSvg, 'name': 'More \n Services...'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              // Name and Notification Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome back'),
                      SizedBox(height: 5.h),
                      Text(
                        'Maruf Mobin',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notification_add_sharp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),
              //Banner Section are here
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(90, 161, 255, 0.4)),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0),
                      Color.fromRGBO(90, 161, 255, 0.4),
                    ],
                    begin: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Connect with Trusted Service Providers in Africa',
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'From diaspora to home: Quality services, verified professionals, secure payments',
                              maxLines: 2,
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(height: 5.h),

                            GestureDetector(
                              onTap: () {},

                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.primaryColor,
                                ),
                                child: Text(
                                  'Request a Service',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(AppImagePath.bannerImagePng),
                  ],
                ),
              ),
              SizedBox(height: 50.h),

              Row(
                children: [
                  Text(
                    'Our Services',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              // Our Service Related work are start here
              Expanded(
                child: GridView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                  ),

                  itemBuilder: (context, index) => Center(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color.fromRGBO(245, 245, 247, 1),
                            ),
                            child: SvgPicture.asset(
                              _ourServices[index]['icon']!,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            _ourServices[index]['name']!,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
//
// class ClientHomeScreen extends StatefulWidget {
//   const ClientHomeScreen({super.key});
//
//   @override
//   State<ClientHomeScreen> createState() => _ClientHomeScreenState();
// }
//
// class _ClientHomeScreenState extends State<ClientHomeScreen> {
//   int _selectedIndex = 0;
//
//   // List of pages to display
//   final List<Widget> _pages = [
//     Center(child: Text('🏠 Home Screen')),
//     Center(child: Text('🔍 Search Screen')),
//     Center(child: Text('👤 Profile Screen')),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index; // update selected tab
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Bottom Navigation Example")),
//       body: _pages[_selectedIndex], // display the selected page
//
//       // The BottomNavigationBar widget
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
