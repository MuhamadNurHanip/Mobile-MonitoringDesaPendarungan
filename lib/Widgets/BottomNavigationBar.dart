import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final Function(int) onTabTapped;
  final int currentIndex;

  const BottomNavigationBarWidget({
    Key? key,
    required this.onTabTapped,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black,
        primaryColor: Colors.white,
        textTheme: Theme.of(context).textTheme.copyWith(),
      ),
      child: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  'lib/assets/homewhite.svg',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/taskwhite.svg',
              width: 24,
              height: 24,
            ),
            label: 'Proker',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/progresswhite.svg',
              width: 24,
              height: 24,
            ),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/reportwhite.svg',
              width: 24,
              height: 24,
            ),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/moneywhite.svg',
              width: 24,
              height: 24,
            ),
            label: 'Dana',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/personwhite.svg',
              width: 24,
              height: 24,
            ),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/logoutwhite.svg',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
        ],
        onTap: onTabTapped,
        elevation: 8,
      ),
    );
  }
}
