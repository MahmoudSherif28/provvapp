import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provvapp/prov.dart';
import 'package:provvapp/screens/WelcomeScreen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool statue = false;
  TextEditingController Fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobaile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xffCBF4FF),
          child: Consumer(builder: (context, prov1 prov, child) {
            return Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 10,
                ),
                test("Full Name", Fullname),
                SizedBox(
                  height: 10,
                ),
                test("email", email),
                SizedBox(
                  height: 10,
                ),
                test("Mobaile number", mobaile),
                SizedBox(
                  height: 10,
                ),
                test("Password", password),
                SizedBox(
                  height: 10,
                ),
                CheckboxListTile(
                    title: Text(
                      "I AGREE",
                    ),
                    value: statue,
                    onChanged: (val) {
                      setState(() {
                        statue = val!;
                      });
                    }),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    prov.signin(Fullname.text.toString(), email.text.toString(),
                        mobaile.text.toString(), password.text.toString());
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => welcome()));
                  },
                  child: Text(
                    "sign up",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 150, vertical: 15)),
                )
              ],
            );
          })),
    );
  }
}

Widget test(String hinttext, TextEditingController firstname) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      controller: firstname,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.all(10),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
            width: .1,
          ))),
    ),
  );
}
