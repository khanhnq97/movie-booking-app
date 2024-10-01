import 'package:flutter/material.dart';
import 'package:movie_booking_app/ui/sign_in/sign_in_page.dart';
import 'package:movie_booking_app/ui/sign_up/sign_up_page.dart';

class SignUpSignInPage extends StatefulWidget {
  const SignUpSignInPage({super.key});

  @override
  State<SignUpSignInPage> createState() => _SignUpSignInPageState();
}

class _SignUpSignInPageState extends State<SignUpSignInPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _Header(),
              _Body(),
              _GroupButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "BOOKING",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        OutlinedButton.icon(
          onPressed: () {
            _showLanguageBottomSheet(context);
          },
          label: const Text(
            'English',
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  void _showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0).copyWith(bottom: 30),
          height: 350,
          color: const Color(0xff1A1A1A),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Choose language',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Which language do you want yo use?',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
                    style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: Colors.amber,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Vietnamese',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.radio_button_off,
                    color: Colors.amber,
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  fixedSize: const Size(double.maxFinite, 50),
                ),
                child: const Text(
                  'Use English',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 330,
          width: 330,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BNGE0YTVjNzUtNzJjOS00NGNlLTgxMzctZTY4YTE1Y2Y1ZTU4XkEyXkFqcGc@._V1_.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Column(
          children: [
            Text(
              'MBooking hello!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text('Enjoy your favourite movie!', style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.amber,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.amber,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.amber,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class _GroupButtons extends StatelessWidget {
  const _GroupButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            SignInPage.navigate(context);
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.amber),
            fixedSize: WidgetStateProperty.all(const Size(double.maxFinite, 50)),
          ),
          child: const Text(
            'Sign in',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {
            SignUpPage.navigate(context);
          },
          style: ButtonStyle(
            fixedSize: WidgetStateProperty.all(const Size(double.maxFinite, 50)),
          ),
          child: const Text(
            'Sign up',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          '''By sign in or sign up, you agree to our terms and \n conditions and privacy policy''',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xffB3B3B3), fontSize: 12),
        ),
      ],
    );
  }
}
