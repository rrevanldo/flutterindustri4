import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listPopMenu = {'Logout', 'Profile'};
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          PopupMenuButton(onSelected: ((value) {
            handleClick(context, value);
          }), itemBuilder: ((context) {
            return listPopMenu.map((choice) {
              return PopupMenuItem(value: choice, child: Text(choice));
            }).toList();
          }))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 8, left: 16, right: 16),
              // padding: const EdgeInsets.symmetric(vertical: 100),
              child: Image.asset(
                'assets/img/pict.jpg',
                width: 150,
                height: 150,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // const Text("Hello Revan Rionaldo!", style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold,)),
            Text(
              "Hello Revan Rionaldo!",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.red),
            ),
            const SizedBox(height: 15),
            Text(
              'Ini adalah halaman home tempat navigasi berawal.',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

  void handleClick(BuildContext context, String value) {
    switch (value) {
      case 'Logout':
        const snackBar = SnackBar(content: Text("Logout Berhasil!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context)
            .pushNamedAndRemoveUntil('login', (route) => false);
        break;
      case 'Profile':
        Navigator.of(context)
            .pushNamedAndRemoveUntil('profile', (route) => false);
        break;
    }
  }
}
