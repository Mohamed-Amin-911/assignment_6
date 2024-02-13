import 'package:assignment_6/screens/discovery_screen.dart';
import 'package:assignment_6/screens/favourites_screen.dart';
import 'package:assignment_6/screens/profile_screen.dart';
import 'package:assignment_6/screens/restaurants_screen.dart';
import 'package:assignment_6/screens/search_Screen.dart';
import 'package:assignment_6/size_config.dart';
import 'package:assignment_6/text_style.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const DiscoveryScreen(),
    const RestaurantsScreen(),
    const SearchScreen(),
    const FavouritesScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      body: screens[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 342 * Sizeconfig.horizontalBlock,
        height: 72 * Sizeconfig.verticalBlock,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Opacity(
            opacity: 0.85,
            child: BottomNavigationBar(
                showUnselectedLabels: true,
                selectedLabelStyle: appStyle(
                    fw: FontWeight.w700,
                    size: 10,
                    color: const Color(0xffF83B01)),
                unselectedLabelStyle: appStyle(
                    fw: FontWeight.w700, size: 10, color: Colors.black),
                currentIndex: _currentIndex,
                onTap: (int value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                backgroundColor: const Color.fromARGB(128, 165, 176, 128),
                selectedItemColor: const Color(0xffF83B01),
                unselectedItemColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                      label: "Discover",
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Image(
                          color: _currentIndex == 0
                              ? const Color(0xffF83B01)
                              : Colors.black,
                          width: 20 * Sizeconfig.horizontalBlock,
                          fit: BoxFit.fitWidth,
                          image: const AssetImage("assets/compass-Filled.png"),
                        ),
                      )),
                  BottomNavigationBarItem(
                      label: "Restaurants",
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Image(
                          color: _currentIndex == 1
                              ? const Color(0xffF83B01)
                              : Colors.black,
                          width: 20 * Sizeconfig.horizontalBlock,
                          fit: BoxFit.fitWidth,
                          image: const AssetImage("assets/store-Filled.png"),
                        ),
                      )),
                  BottomNavigationBarItem(
                      label: "Search",
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Image(
                          color: _currentIndex == 2
                              ? const Color(0xffF83B01)
                              : Colors.black,
                          image: const AssetImage("assets/search.png"),
                        ),
                      )),
                  BottomNavigationBarItem(
                      label: "Favourite",
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Image(
                          color: _currentIndex == 3
                              ? const Color(0xffF83B01)
                              : Colors.black,
                          image: const AssetImage("assets/fav.png"),
                        ),
                      )),
                  BottomNavigationBarItem(
                      label: "Profile",
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Image(
                          color: _currentIndex == 4
                              ? const Color(0xffF83B01)
                              : Colors.black,
                          image: const AssetImage("assets/profile.png"),
                        ),
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
