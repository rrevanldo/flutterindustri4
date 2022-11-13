import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                      child: Icon(Icons.rocket_launch,
                          size: 100, color: Colors.blue)),
                  const SizedBox(height: 12),
                  Center(
                    child: Text(
                      "News Apps",
                      style: 
                      Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Email",
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const TextField(
                      decoration: 
                          InputDecoration(hintText: "Input your email...")),
                  const SizedBox(height: 12),
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: 
                        InputDecoration(hintText: "Input your password...")),
                    const SizedBox(height: 18),
                    ElevatedButton(
                      onPressed: () => redirectToHome(),
                      child: const Text("Submit")),
                ],
              ),
            ),
          ),
        ));
  }

  void redirectToHome() {
    const snackBar = SnackBar(content: Text("Login Berhasil!"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    Navigator.of(context).pushNamedAndRemoveUntil("menu", (r) => false);
  }
}