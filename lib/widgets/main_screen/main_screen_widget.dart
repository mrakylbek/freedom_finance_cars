import 'package:ff_cars/widgets/main_screen/glavnaya_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/app_colors.dart';
import '../movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 2;

  void onSelectTab(int i) {
    if (_selectedTab == i) return;
    setState(() {
      _selectedTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('FF Cars'),
        centerTitle: true,
      ),
      // body: Center(
      //   child: _widgetOptions[_selectedTab],
      // ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          Text('Подать объявление'),
          // MovieListWidget(),
          Text('Сообщение'),
          Glavnaya(),
          Text('Избранное'),
          Text('Профиль'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_sharp),
            label: 'Подать',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Сообщение',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Профиль',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
