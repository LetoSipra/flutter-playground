import 'package:flutter/material.dart';

class SerachBarComponent extends StatefulWidget {
  const SerachBarComponent({super.key});

  @override
  State<SerachBarComponent> createState() => _SerachBarComponentState();
}

class _SerachBarComponentState extends State<SerachBarComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              )),
        ],
      ),
    );
  }
}
