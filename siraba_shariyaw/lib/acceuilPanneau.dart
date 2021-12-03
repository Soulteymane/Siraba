import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:siraba_shariyaw/categoryPage/cat1.dart';
import 'package:siraba_shariyaw/categoryPage/cat2.dart';
import 'package:siraba_shariyaw/categoryPage/cat3.dart';
import 'package:siraba_shariyaw/categoryPage/cat4.dart';

class acceuilPanneau extends StatefulWidget {
  const acceuilPanneau({Key? key}) : super(key: key);

  @override
  _acceuilPanneauState createState() => _acceuilPanneauState();
}

class _acceuilPanneauState extends State<acceuilPanneau> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: ContainedTabBarView(
            tabs: [
              Text('Danger',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Text('Indication',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Text('Interdiction',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Text('Obligation',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ],
            views: [
              cat1(),
              cat2(),
              cat3(),
              cat4(),
            ],
            onChange: (index) => print(index),
          ),
        ),
      ),
    );
  }
}
