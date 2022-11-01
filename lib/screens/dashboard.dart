import 'package:cashsecond/screens/tabs/contact.dart';
import 'package:cashsecond/screens/tabs/home.dart';
import 'package:cashsecond/screens/tabs/profile.dart';
import 'package:cashsecond/screens/tabs/repair.dart';
import 'package:cashsecond/screens/tabs/sell.dart';
import 'package:flutter/material.dart';

List<Widget> tabs = const [
  HomeScreen(),
  SellScreen(),
  RepairScreen(),
  ContactScreen(),
  ProfileScreen(),
];

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _bottomTab = 0;
  int pageIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: pageIndex, keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: tabs[_bottomTab],
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 36),
        elevation: 0,
        currentIndex: _bottomTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        iconSize: 32.0,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: _bottomTab == 0
                  ? const Icon(
                      Icons.home_outlined,
                      color: Color(0xFF0063D1),
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                    )),
          BottomNavigationBarItem(
              label: 'Sell',
              icon: _bottomTab == 1
                  ? const Icon(
                      Icons.sell_outlined,
                      color: Color(0xFF0063D1),
                    )
                  : const Icon(
                      Icons.sell_outlined,
                      color: Colors.grey,
                    )),
          BottomNavigationBarItem(
              label: 'Repair',
              icon: _bottomTab == 2
                  ? const Icon(
                      Icons.report_gmailerrorred,
                      color: Color(0xFF0063D1),
                    )
                  : const Icon(
                      Icons.report_gmailerrorred,
                      color: Colors.grey,
                    )),
          BottomNavigationBarItem(
              label: 'Contact',
              icon: _bottomTab == 3
                  ? const Icon(
                      Icons.phone,
                      color: Color(0xFF0063D1),
                    )
                  : const Icon(
                      Icons.phone,
                      color: Colors.grey,
                    )),
          BottomNavigationBarItem(
              label: 'Account',
              icon: _bottomTab == 4
                  ? const Icon(
                      Icons.person_outlined,
                      color: Color(0xFF0063D1),
                    )
                  : const Icon(
                      Icons.person_outlined,
                      color: Colors.grey,
                    )),
        ],
        onTap: (i) {
          setState(() {
            _bottomTab = i;
            pageIndex = i;
            _pageController.jumpToPage(i);
          });
        },
      ),
    );
  }
}
