import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class finalscreen extends StatefulWidget {
  const finalscreen({super.key});

  @override
  State<finalscreen> createState() => _finalscreenState();
}

class _finalscreenState extends State<finalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffFFCC9D),
        child: Column(
          children: [
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("THE GREATEST SHIRT FOR THE GREATEST CLUB EVER",style: TextStyle(color: Colors.black,fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 0),
              child: Image.network(
                "https://i8.amplience.net/i/jpl/jd_691049_a",
                height: 300,
              ),
            ),
           SizedBox(height: 10,),
            Container(
              child: Text("the amount of the shirt is "),
            ),
          ],
        ),
      ),
    );
  }
}
