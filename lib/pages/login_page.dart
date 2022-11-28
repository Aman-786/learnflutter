import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool choosebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/hero.png"),
              const SizedBox(
                height: 20,
              ),
              Text(
                "welcome $name",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
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
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("not a member ? "),
                    // Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "register",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    choosebutton = true;
                  });

                  await Future.delayed(const Duration(milliseconds: 300));
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, "/home");
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: choosebutton ? 100 : 150,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: choosebutton ? BoxShape.circle : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(
                      choosebutton ? 20 : 8,
                    ),
                  ),
                  child: choosebutton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
              // ElevatedButton(
              //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
              //   onPressed: () {
              //     Navigator.pushNamed(context, "/home");
              //   },
              //   child: const Text("Sign in"),
              // ),
            ],
          ),
        ));
  }
}
