import 'package:flutter/material.dart';
import 'package:portfolio/screens/splash_screen/firstpage.dart';
import 'package:portfolio/screens/splash_screen/preparingfood.dart';

class Myorders extends StatefulWidget {
  const Myorders({super.key, required this.selectedProducts});
  final List<Product> selectedProducts;

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  List<int> quantities = [];
  @override
  void initState() {
    super.initState();
    quantities = List.filled(widget.selectedProducts.length, 1);
  }

  @override
  Widget build(BuildContext context) {
     int itemTotal = 0;
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 8, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // BACK
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back, size: 26),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1A1A4E),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 70),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Orders',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                color: Color(0xff1F1970),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      percent(),
                                      SizedBox(height: 10, width: 10),
                                      Text(
                                        'Apply Coupon',
                                        style: TextStyle(
                                          color: Color(0xff1F1970),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 150),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Color(0xff1F1970),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20, height: 20),
                            Container(
                              width: 360,

                              child: Column(
                                children: [
                                  ...List.generate(
                                    widget.selectedProducts.length,
                                    (index) {
                                      final product =
                                          widget.selectedProducts[index];
                                      final unitPrice = int.parse(
                                        product.price
                                            .replaceAll('\$', '')
                                            .replaceAll('Per Plate ', ''),
                                      );
                                      final total =
                                          unitPrice * quantities[index];
                                      print('INDEX = $index');
                                      print('PRODUCT = ${product.text}');
                                      print('PRICE = $unitPrice');
                                      print('QUANTITY = ${quantities[index]}');
                                      print('TOTAL = $total');
                                      print('----------------');
                                      itemTotal += total;

                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,

                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 20,
                                              left: 10,
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                'assets/circle.png',
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                product.text,
                                                textAlign: TextAlign.right,

                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Color(0xff1F1970),
                                                ),
                                              ),
                                              Text(
                                                product.price,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: Color(0xff1F1970),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(27),
                                                color: const Color(0x2937B890),
                                              ),
                                              child: Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        quantities[index]++;
                                                      });
                                                    },
                                                    icon: Icon(Icons.add),
                                                  ),
                                                  Text(
                                                    quantities[index]
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                      color: Color(0xff1F1970),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        if (quantities[index] >
                                                            1) {
                                                          quantities[index]--;
                                                        }
                                                      });
                                                    },
                                                    icon: Icon(Icons.remove),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Text(
                                            product.price,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff1F1970),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Item Total',
                                              style: TextStyle(
                                                color: Color(0xff1F1970),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '\$$itemTotal',
                                              style: TextStyle(
                                                color: Color(0xff1F1970),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Delivery Fee',
                                              style: TextStyle(
                                                color: Color(0xff1F1970),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '0',
                                              style: TextStyle(
                                                color: Color(0xff1F1970),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Tax and charges',
                                              style: TextStyle(
                                                color: Color(0xff1F1970),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              'l',
                                              style: TextStyle(
                                                color: Color(0xff1F1970),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'To Pay',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff1F1970),
                                          ),
                                        ),
                                        Text(
                                          '\$40',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff1F1970),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    child: Container( 

                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Delivery Address',
                                                style: TextStyle(
                                                  color: Color(0xff1F1970),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                ),
                                              ),

                                              InkWell(
                                                child: Container(
                                                  width: 90,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                      55,
                                                      115,
                                                      228,
                                                      126,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          27,
                                                        ),
                                                  ),

                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          top: 5,
                                                        ),
                                                    child: Text(
                                                      'Office',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xff37B890,
                                                        ),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '2124 Doawoad Ave Undefined',
                                            style: TextStyle(
                                              color: Color(0xff1F1970),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 20,
            right: -35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/myorder1.png',
                fit: BoxFit.cover,
                width: 300,
                height: 200,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              width: 325,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage('assets/payme.png')),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 15),
                          Text('Master card', style: TextStyle(color: Color(0xff1F1970), fontSize: 12, fontWeight: FontWeight.w400),),
                          Text('***4035'),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Preparingfood()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1F1970),
                      fixedSize: Size(120, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                        //borderRadius: BorderRadius.zero, //Rectangular border
                      ),
                    ),
                    child: Text(
                      'Pay now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class percent extends StatefulWidget {
  const percent({super.key});

  @override
  State<percent> createState() => _percentState();
}

class _percentState extends State<percent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/prosent.png')),
      ),
      child: Icon(Icons.percent, size: 10),
    );
  }
}
