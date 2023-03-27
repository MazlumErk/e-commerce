import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:e_commerce/Styles/Painters/CustomShapedButtonPainter.dart';

class ProductUnavailablePage extends StatefulWidget {
  const ProductUnavailablePage({super.key});

  @override
  State<ProductUnavailablePage> createState() => _ProductUnavailablePageState();
}

class _ProductUnavailablePageState extends State<ProductUnavailablePage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 30,
                height: MediaQuery.of(context).size.height / 2,
                child: RiveAnimation.asset('assets/rive/rive-animation.riv'),
              ),
              Text(
                'This produck is unavailable',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  'Unfortunately, this product might be out of stock or unavailable to order.'),
              SizedBox(height: 16,),
              GestureDetector(
                onTap: () => Navigator.of(context).pushReplacementNamed('/home'),
                child: Container(
                  width: deviceWidth / 2,
                  height: 110,
                  color: Colors.black,
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: Size(deviceWidth / 2, 110),
                        painter: CustomShapedButton(),
                      ),
                      Center(
                        child: Text("See What's New",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

