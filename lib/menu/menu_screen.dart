import 'package:flutter/material.dart';
import 'package:episode_3/home/home_screen.dart';
import 'package:episode_3/news/news_screen.dart';
import 'package:episode_3/profile/profile_screen.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var listWidget = [
    const HomeScreen(),
    const NewsScreen(),
    const ProfileScreen(),
  ];
  int navIndex = 0;
  final listPopMenu = {'Logout'};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          PopupMenuButton(
            onSelected: ((value){
              handleClick(context, value);
            }),
            itemBuilder: ((context) {
              return listPopMenu.map((choice) {
                return PopupMenuItem(value: choice, child: Text(choice));
              }).toList();
            }),
            )
        ],
      ),
      body: listWidget[navIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            navIndex = index;
          });
        },
        currentIndex: navIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ]),
    );
  }

  void handleClick(BuildContext context, Object? value) {
    switch (value) {
      case 'Logout':
      const snackBar = SnackBar(content: Text("Logout Berhasil!"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.of(context)
          .pushNamedAndRemoveUntil('login', (route) => false);
      break;
    }
  }
}