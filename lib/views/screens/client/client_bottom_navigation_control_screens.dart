import 'package:flutter/material.dart';
import 'package:waafii/utils/app_colors.dart';
import 'package:waafii/views/screens/client/chat/chat.dart';
import 'package:waafii/views/screens/client/home/client_home_screen.dart';
import 'package:waafii/views/screens/client/profile/profile.dart';
import 'package:waafii/views/screens/client/service/service.dart';

class ClientBottomNavigationControlScreens extends StatefulWidget {
  const ClientBottomNavigationControlScreens({super.key});

  @override
  State<ClientBottomNavigationControlScreens> createState() =>
      _ClientBottomNavigationControlScreensState();
}

class _ClientBottomNavigationControlScreensState
    extends State<ClientBottomNavigationControlScreens> {
  int _selectedIndex = 0;

  // Bottom Navigation Bar Screen List
  final List<Widget> _pages = [
    ClientHomeScreen(),
    ServiceScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  // on Tap Controller
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      // Bottom Navigation Relate Work are here
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _onItemTapped(index);
        },
        backgroundColor: AppColors.navigationBarColor,
        currentIndex: _selectedIndex,
        elevation: 2.2,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services_sharp),
            label: 'Service',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
