import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_commerce/Styles/Painters/CustomCarouselPainter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _carouselIndex = 0;
  int _categoriesIndex = 0;
  final List<String> _categorieNames = ['Newest', 'Accesories', 'Hoodie'];
  final List<String> _productImages = [
    '1.png',
    '2.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png'
  ];
  final List<String> _productNames = [
    'Track Suit',
    'Reflector Hoodie',
    'Oversized Hoodie',
    'Oversized Hoodie',
    'Oversized Hoodie',
    'Track Suit'
  ];
  final List<String> _productPrice = [
    '139.99',
    '89.99',
    '89.99',
    '89.99',
    '89.99',
    '139.99'
  ];
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            'assets/icons/Vector309.svg',
            width: 17.96,
            height: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.2),
            child: SvgPicture.asset(
              'assets/icons/Vector.svg',
              width: 17.96,
              height: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.2),
            child: Center(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.5),
                    child: SvgPicture.asset(
                      'assets/icons/Rectangle 773.svg',
                      width: 7,
                      height: 4.67,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/Rectangle 772.svg',
                    width: 17.96,
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            // Padding(
            //   padding:
            //       const EdgeInsets.only(left: 33.99, right: 17.15, top: 16),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       SvgPicture.asset(
            //         'assets/icons/Vector309.svg',
            //         width: 17.96,
            //         height: 20,
            //       ),
            //       Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 12.2),
            //             child: SvgPicture.asset(
            //               'assets/icons/Vector.svg',
            //               width: 17.96,
            //               height: 20,
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 12.2),
            //             child: Stack(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(6.5),
            //                   child: SvgPicture.asset(
            //                     'assets/icons/Rectangle 773.svg',
            //                     width: 7,
            //                     height: 4.67,
            //                   ),
            //                 ),
            //                 SvgPicture.asset(
            //                   'assets/icons/Rectangle 772.svg',
            //                   width: 17.96,
            //                   height: 20,
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                // color: Colors.red,
                height: 200,
                child: Column(
                  children: [
                    Expanded(
                      flex: 30,
                      child: PageView.builder(
                        itemCount: 4,
                        onPageChanged: (value) {
                          _carouselIndex = value;
                          setState(() {});
                        },
                        itemBuilder: (BuildContext context, index) {
                          return CustomCarousel(deviceWidth);
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 250),
                              width: _carouselIndex == index ? 28 : 6,
                              decoration: BoxDecoration(
                                  color: _carouselIndex == index
                                      ? Color.fromARGB(255, 215, 252, 112)
                                      : Color.fromARGB(250, 98, 98, 98),
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34, bottom: 15),
              child: SizedBox(
                height: 47,
                child: Container(
                  // color: Colors.red,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categorieNames.length,
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _categoriesIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.5),
                          child: Container(
                            width: 128,
                            height: 100,
                            decoration: BoxDecoration(
                              color: _categoriesIndex == index
                                  ? Color.fromARGB(255, 215, 252, 112)
                                  : Color.fromARGB(255, 43, 43, 43),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                _categorieNames[index],
                                style: TextStyle(
                                    color: _categoriesIndex == index
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 600,
                child: Container(
                  // color: Colors.red,
                  child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2 / 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    padding: EdgeInsets.only(bottom: 300),
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacementNamed('/productunavailable'),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${_productImages[index]}'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Text(_productNames[index]),
                            Text('${_productPrice[index]} ₺'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 215, 252, 112),
        unselectedItemColor: Color.fromARGB(255, 115, 115, 115),
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Center CustomCarousel(double deviceWidth) {
    return Center(
      child: GestureDetector(
        onTap: () => print(''),
        child: Container(
          width: deviceWidth / 1.3,
          height: 146,
          color: Colors.black,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(deviceWidth / 1.2, 146),
                painter: CustomCarouselPainter(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 1, right: 8),
                child: Image(
                  image: const AssetImage('assets/images/image.png'),
                  width: deviceWidth / 1.3,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
