import 'package:flutter/material.dart';
import 'package:movie_booking_app/ui/home/home_page.dart';
import 'package:movie_booking_app/ui/movie/movie_page.dart';
import 'package:movie_booking_app/ui/profile/profile_page.dart';
import 'package:movie_booking_app/ui/ticket/ticket_page.dart';

/// Flutter code sample for [NavigationBar].

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static void navigate(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: <Widget>[
        /// Home page
        const HomePage(),

        /// Notifications page
        const TicketPage(),

        /// Movie page
        const MoviePage(),

        /// Profile page
        const ProfilePage(),
      ][currentPageIndex],
    );
  }

  Widget _buildBottomNavigationBar() {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: Colors.amber,
      selectedIndex: currentPageIndex,
      backgroundColor: Colors.black,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(
            child: Icon(
              Icons.menu_open,
              color: Colors.white,
            ),
          ),
          label: 'Ticket',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('0'),
            child: Icon(
              Icons.movie_rounded,
              color: Colors.white,
            ),
          ),
          label: 'Movie',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
