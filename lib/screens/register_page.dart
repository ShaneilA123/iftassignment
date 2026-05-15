import 'package:flutter/material.dart';
import 'login_page.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 30),

              Image.asset(
                'assets/images/logo.png',
                height: 140,
              ),

                const SizedBox(height: 20),

                const Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.purpleAccent,
                  ),
                ),

                const SizedBox(height: 30),

                const CustomTextField(hint: "Full Name"),

                const SizedBox(height: 15),

                const CustomTextField(hint: "Email"),

                const SizedBox(height: 15),

                const CustomTextField(hint: "Phone Number"),

                const SizedBox(height: 15),

                DropdownButtonFormField(
                  value: gender,
                  decoration: const InputDecoration(
                    hintText: "Select Gender",
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "Male",
                      child: Text("Male"),
                    ),
                    DropdownMenuItem(
                      value: "Female",
                      child: Text("Female"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),

                const SizedBox(height: 15),

                const CustomTextField(
                  hint: "Password",
                  obscure: true,
                ),

                const SizedBox(height: 25),

                CustomButton(
                  text: "Register",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text(
                      "Already have an account?",
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}