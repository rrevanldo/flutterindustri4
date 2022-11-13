import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listPopMenu = {'Logout', 'Home'};
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.black,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/img/vann.jpg'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text('Revan Rionaldo',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'Nama Panggilan',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'Deann',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'Email',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'revanrion08@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'Pekerjaan',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'Pelajar',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'Hobi',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                'Ngoding',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // there is a back button to the home page with icon
            Center(
              child: ElevatedButton.icon(
                onPressed: () => redirectToHome(context),
                icon: const Icon(Icons.home),
                label: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Kembali ke home',
                      style: TextStyle(fontSize: 22)),
                ),
                // create outline black
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 24, 28, 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void redirectToHome(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);
  }

  void handleClick(BuildContext context, String value) {
    switch (value) {
      case 'Logout':
        const snackBar = SnackBar(content: Text("Logout Berhasil!"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context)
            .pushNamedAndRemoveUntil('login', (route) => false);
        break;
      case 'Home':
        Navigator.of(context).pushNamedAndRemoveUntil('home', (route) => false);
        break;
    }
  }
}
