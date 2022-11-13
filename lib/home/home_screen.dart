import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 30),
            child: Image.asset(
              'img/pict.jpg',
              width: 150,
              height: 150,
            ),
          ),
          Text(
            "Selamat datang, Dean!",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 8,
          ),
          Text("Ini adalah halaman home tempat navigasi berawal.",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.black))
          ],
        )),
    );
  }
}