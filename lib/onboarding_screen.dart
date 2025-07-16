import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName ='/onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/header.png',
              height: 80,
            ),
            Spacer(flex: 1,),

            SizedBox(height: 18),


            Center(
              child: Image.asset(
                'assets/images/frame_3.png',
                height: 230,
              ),
            ),

            SizedBox(height: 40),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Welcome To Islami App',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFFE2BE7F)),
              ),
            ),

            Spacer(flex: 3,),


            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/progress.png',
                  height: 30,
                  width: 30,
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE2BE7F),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
