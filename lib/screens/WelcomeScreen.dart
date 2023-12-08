import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provvapp/prov.dart';
import 'package:provvapp/screens/screen3.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xffFFCC9D),
        elevation: 0,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        color: Color(0xffFFCC9D),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 0),
              child: Image.network(
                "https://i8.amplience.net/i/jpl/jd_691049_a",
                height: 300,
              ),
            ),
            SizedBox(
              height: 2,
            ),
       Consumer(builder:(context,prov1 prov, child ){
        return  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            color: Colors.white,
            child: Text("welcome ${prov.name},email is ${prov.email}, mobaile is ${prov.mobaile}"),
          ),
        );
       }
       ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text("AMOUNT"),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  amount++;
                                });
                              },
                              icon: Icon(Icons.add)),
                          Text(amount.toString()),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                amount--;
                              });
                            },
                            icon: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 38,
width: 150,
padding: EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => finalscreen()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "add to cart ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
