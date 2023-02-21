import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final void Function(int) onTap;
  final int currentIndex;

  const MyBottomNavigationBar(
      {Key? key, required this.onTap, required this.currentIndex})
      : super(key: key);

  _bottomNavigationBarItem({required IconData icondata, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icondata,
        size: 24,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.red,
      onTap: onTap,
      currentIndex: currentIndex,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 12,
      items: [
        _bottomNavigationBarItem(
          label: "home",
          icondata: Icons.add,
        ),
        _bottomNavigationBarItem(
          icondata: Icons.add,
          label: "hello",
        ),
      ],
    );
  }
}
