import 'package:flutter/material.dart';

class cardPanneau extends StatefulWidget {
  const cardPanneau({Key? key}) : super(key: key);

  @override
  _cardPanneauState createState() => _cardPanneauState();
}

class _cardPanneauState extends State<cardPanneau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
          ),
          width: 200,
          height: 250,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.grey,
                height: 130,
                width: 130,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Panneau",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
