
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_flutter_app/controllers/sign_in_controller.dart';
import 'package:social_media_flutter_app/pages/authentication/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInPageController>(
      init: SignInPageController(),
      builder: (SignInPageController controller) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'CIVIC',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 212, 211, 211),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Login to see your friend's photos and videos",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 208, 208, 208)),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your email...',
                          prefixIcon: const Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 2.0),
                              borderRadius: BorderRadius.circular(8.0))),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your password...',
                          prefixIcon: const Icon(Icons.password),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 2.0),
                              borderRadius: BorderRadius.circular(8.0))),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          minimumSize: const Size(double.infinity, 50)),
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
            child: OutlinedButton(
              onPressed: () {
                Get.to(const SignUpPage());
              },
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text('Create an account'),
            ),
          ),
        );
      },
    );
  }
}
