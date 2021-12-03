import 'package:flutter/material.dart';
import 'package:siraba_shariyaw/cardPanneau.dart';

class cat1 extends StatefulWidget {
  const cat1({Key? key}) : super(key: key);

  @override
  _cat1State createState() => _cat1State();
}

class _cat1State extends State<cat1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),
              Container(
                // height: 200,
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  children: [
                    cardPanneau(),
                    cardPanneau(),
                    cardPanneau(),
                    cardPanneau(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
