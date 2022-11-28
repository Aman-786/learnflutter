import 'package:flutter/material.dart';
import 'package:flutter_tut1/pages/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.blue,
        // ),
        body: Container(
      width: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/signuphero.png'),

              //sign up heading
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Sign UP",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),

              //text fiels starts here ####################################
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        // name = value;
                        // setState(() {});
                      },
                      decoration: const InputDecoration(
                        hintText: "example@email.com",
                        labelText: "Username",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        print(value);
                      },
                      decoration: const InputDecoration(
                        hintText: "aman",
                        labelText: "Fullname",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Confirm-Password",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Container(
                    width: 200,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
