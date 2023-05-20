import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:nurse_application_1/const/xcolors.dart';

import '../const/xfonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.bg,
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Arista dkk, 2023",
              style: TextStyle(
                  color: Colors.grey, fontFamily: MyFont.regular, fontSize: 10),
              textAlign: TextAlign.center,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
              width: 200,
            ),

            // Login text Widget
            Center(
              child: Container(
                //height: 200,
                //width: 400,
                //alignment: Alignment.center,
                child: Lottie.asset('assets/imgs/medical-frontliners.json'),
                // child: Text(
                //   "Login",
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 34,
                //     fontWeight: FontWeight.bold,
                //   ),
                // textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
              width: 200,
            ),
            const Text(
              "Aplikasi Asuhan Keperawatan",
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: MyFont.regular,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 30,
              width: 200,
            ),

            Container(
              width: 570,
              height: 70,
              //padding: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyColor.hijau3),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                //onPressed: isLogginIn ? null : _doLogin,
                child: const Text(
                  'Mulai',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: MyFont.bold,
                  ),
                ),
              ),
              // child: RaisedButton(
              //   elevation: 8,
              //   color: MyColor.green,
              //   child: Text(
              //     "Submit",
              //     style: TextStyle(color: Colors.white, fontFamily: MyFont.bold),
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   onPressed: isLogginIn ? null : _doLogin,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
