import 'package:flutter/material.dart';
import 'package:login_screen/components/text_field.dart';
import 'package:login_screen/components/my_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
// text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
//sign in method

  void SignIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            //logo
            Icon(
              Icons.lock,
              size: 100,
            ),

            SizedBox(height: 20),
            // Text
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            // Username
            Text_Field(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            SizedBox(height: 15),

            // Password
            Text_Field(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(
              height: 10,
            ),

            // Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            // Sign In Button
            MyButton(
                // onTap: SignIn(),
                ),
            // Continue with
            SizedBox(
              height: 45,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(" Or continue with"),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            // Google Sign in
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Google icon button
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.google,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                //Github icon button
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.github,
                      size: 40,
                    ),
                  ),
                )
              ],
            )
            // Not a member ?Register
          ],
        ),
      ),
    );
  }
}
