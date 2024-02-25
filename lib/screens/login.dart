import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 45, 9, 107),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                    gradient: LinearGradient(colors: [
                      Theme.of(context).colorScheme.primaryContainer,
                      Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.4),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 90,
                          bottom: 50,
                        ),
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      const Text(
                        'Login To Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // const Padding(
                      //   padding: EdgeInsets.all(20.0),
                      //   child: TextField(
                      // style: TextStyle(color: Colors.white),
                      //     decoration: InputDecoration(
                      //       label: Text('E-Mail'),
                      //     ),
                      //   ),
                      // ),
                      // const Padding(
                      //   padding: EdgeInsets.all(20.0),
                      //   child: TextField(
                      // style: TextStyle(color: Colors.white),
                      //     decoration: InputDecoration(
                      //         label: Text('Password'),
                      //         suffix: Icon(
                      //           Icons.visibility,
                      //           color: Colors.white,
                      //         )),
                      //   ),
                      // ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'E-Mail',
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 20))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility),
                              hintText: 'Password',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: RichText(
                                text: const TextSpan(
                                    text: 'Forgot password',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    children: <InlineSpan>[
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(Icons.chevron_right),
                                      )
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text('Login'),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50)),
                              child: RichText(
                                text: TextSpan(
                                  children: <InlineSpan>[
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right:
                                                4.0), // Add padding to the end of the icon
                                        child: SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: Image.asset(
                                                'assets/images/google.png')),
                                      ),
                                    ),
                                    const TextSpan(
                                      text: ' Google Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(50)),
                              child: RichText(
                                text: TextSpan(
                                  children: <InlineSpan>[
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right:
                                                4.0), // Add padding to the end of the icon
                                        child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: Image.asset(
                                              'assets/images/facebook.png'),
                                        ),
                                      ),
                                    ),
                                    const TextSpan(
                                      text: ' Facebook Login',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Align children to the start (left)
                    children: [
                      const Text(
                        'Dont have an account ?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        child: const Text(
                          'Sign Up Here',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
