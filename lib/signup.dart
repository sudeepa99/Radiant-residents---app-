import 'package:flutter/material.dart';
import 'package:radiant_residencies_app/sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          //height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(
                  "assets/beautiful-hall-with-male-silhouette-standing-stairway.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,
            ),
          ),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 160, bottom: 200),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 34.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 244, 247, 1),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 20, right: 25),
                      child: Form(
                        key: formKey2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 200.0),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 244, 247, 1),
                                ),
                              ),
                            ),
                            TextFormField(
                                cursorColor: Colors.white,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFFF7817),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFFF7817),
                                    ),
                                  ),
                                ),
                                controller: _emailController,
                                validator: (emailAdd) {
                                  if (emailAdd == null || emailAdd.isEmpty) {
                                    return 'Please enter your email address';
                                  }
                                  if (!RegExp(
                                          r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                      .hasMatch(emailAdd)) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 18.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 200.0),
                              child: Text(
                                "Password*",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 244, 247, 1)),
                              ),
                            ),
                            TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFFF7817),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFFF7817),
                                  ),
                                ),
                              ),
                              controller: _passwordController,
                              validator: (password) {
                                if (password == null || password.isEmpty) {
                                  return 'Please enter a password';
                                } else if (password.length < 9) {
                                  return 'Password shoulde be atleast 8 characters';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75, right: 75),
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey2.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()));
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFFFF7817),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(8)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
