import 'package:flutter/material.dart';
import 'package:note_app/see/bottom/bottom.dart';

class login extends StatefulWidget {
  const login({super.key, this.registrationGmail, this.registrationPassword});

  final String? registrationGmail;
  final String? registrationPassword;

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController gmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(

        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 50),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/full.png", fit: BoxFit.cover),
                ),

                Text(
                  "Because every idea matters...",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.purple.shade900,
                  ),
                ),

                TextField(
                  controller: gmailController,
                  decoration: InputDecoration(hintText: "Gmail"),
                ),

                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                ),

                SizedBox(height: 10),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {

                    if (gmailController.text == widget.registrationGmail &&
                        passwordController.text ==
                            widget.registrationPassword) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login Successful")),
                      );

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => bottom()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Invalid email or password")),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 120,
                      vertical: 15,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
