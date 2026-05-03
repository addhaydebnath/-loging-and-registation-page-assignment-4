

Widget buildButton(String text, BuildContext context) {
import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'login_page.dart';

class FoodLandingPage extends StatelessWidget {
  const FoodLandingPage({super.key});

  Widget buildButton(String text, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (text == "Sign Up") {
       
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignupPage()),
          );
        } else if (text == "Login") {
          
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildButton("Sign Up", context),
                  const SizedBox(width: 10),
                  buildButton("Login", context),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 90,
                backgroundColor: const Color.fromRGBO(255, 165, 0, 0.1),
                child: const CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Enjoy your food",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Delicious food, delivered fast to your door",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
