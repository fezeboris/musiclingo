import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 45, 9, 107),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: MediaQuery.of(context).size.height * 0.35,
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
                        'Register To Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back,
                            size: 30,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              // suffixIcon: Icon(Icons.visibility),
                              hintText: 'Name',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              // suffixIcon: Icon(Icons.visibility),
                              hintText: 'E-mail',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: const TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              // suffixIcon: Icon(Icons.visibility),
                              hintText: 'Phone Number',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
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
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            // color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(50)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(200, 45),
                              backgroundColor:
                                  Theme.of(context).colorScheme.onPrimary),
                          onPressed: () {},
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
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
                                    text: 'Use Google ',
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
                                    text: 'Use Facebook ',
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
                    ]),
              ),
            ],
          ),
        ));
  }
}
