import 'package:flutter/material.dart';
import 'package:movie_booking_app/ui/home/main_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static void navigate(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignInPage(),
      ),
    );
  }

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isRemember = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
              CheckboxListTile(
                value: isRemember,
                activeColor: Colors.amber,
                checkColor: Colors.black,
                contentPadding: const EdgeInsets.all(0),
                onChanged: (value) {
                  setState(() {
                    isRemember = value ?? false;
                  });
                },
                title: const Text(
                  'Remember me',
                  style: TextStyle(color: Colors.white),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  HomePage.navigate(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  fixedSize: const Size(double.maxFinite, 50),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
