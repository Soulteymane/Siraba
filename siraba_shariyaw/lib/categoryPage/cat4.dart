import 'package:flutter/material.dart';
import 'package:siraba_shariyaw/cardPanneau.dart';

class cat4 extends StatefulWidget {
  const cat4({Key? key}) : super(key: key);

  @override
  _cat4State createState() => _cat4State();
}

class _cat4State extends State<cat4> {
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
                color: Colors.grey,
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
