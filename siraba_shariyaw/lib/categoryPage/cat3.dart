import 'package:flutter/material.dart';
import 'package:siraba_shariyaw/cardPanneau.dart';

class cat3 extends StatefulWidget {
  const cat3({Key? key}) : super(key: key);

  @override
  _cat3State createState() => _cat3State();
}

class _cat3State extends State<cat3> {
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
                color: Colors.yellow,
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
