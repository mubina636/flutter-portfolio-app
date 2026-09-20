import 'package:flutter/material.dart';
import 'package:portfolio/screens/splash_screen/myorders.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int prodcut = 0;
  List<Product> selectedProducts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Text(
                  'Fresh Menu',
                  style: TextStyle(
                    color: Color(0xff1F1970),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.arrow_drop_down_outlined),
              ],
            ),
            Icon(Icons.search),
          ],
        ),
      ),
      drawer: Drawer(child: Text('data')),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      image: 'assets/1food.png',
                      text: 'Tuna Fish',
                      price: 'Per Plate \$30 ',
                      onSelect: (product, isSelected) {
                        setState(() {
                          if (isSelected) {
                            selectedProducts.add(product);
                            prodcut++;
                          } else {
                            selectedProducts.remove(product);
                            prodcut--;
                          }
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Card(
                        image: 'assets/ricebread.png',
                        text: 'Rice & Bread',
                        price: 'Per Plate \$24',
                        onSelect: (product, isSelected) {
                          setState(() {
                            if (isSelected) {
                              selectedProducts.add(product);
                              prodcut++;
                            } else {
                              selectedProducts.remove(product);
                              prodcut--;
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      image: 'assets/eggselery.png',
                      text: 'Eggs Celery ',
                      price: 'Per Plate \$12 ',
                      onSelect: (product, isSelected) {
                        setState(() {
                          if (isSelected) {
                            selectedProducts.add(product);
                            prodcut++;
                          } else {
                            selectedProducts.remove(product);
                            prodcut--;
                          }
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Card(
                        image: 'assets/herbybag.png',
                        text: 'Herby Veg',
                        price: 'Per Plate \$18 ',
                        onSelect: (product, isSelected) {
                          setState(() {
                            if (isSelected) {
                              selectedProducts.add(product);
                              prodcut++;
                            } else {
                              selectedProducts.remove(product);
                              prodcut--;
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      image: 'assets/salmon.png',
                      text: 'Salmon Fish',
                      price: 'Per Plate \$28 ',
                      onSelect: (product, isSelected) {
                        setState(() {
                          if (isSelected) {
                            selectedProducts.add(product);
                            prodcut++;
                          } else {
                            selectedProducts.remove(product);
                            prodcut--;
                          }
                        });
                      },
                    ),
                    Card(
                      image: 'assets/makoron.png',
                      text: 'Makaron',
                      price: 'Per Plate \$17 ',
                      onSelect: (product, isSelected) {
                        setState(() {
                          if (isSelected) {
                            selectedProducts.add(product);
                            prodcut++;
                          } else {
                            selectedProducts.remove(product);
                            prodcut--;
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
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
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Color(0xFF1F1970),
                      ),
                      SizedBox(width: 7),
                      Text.rich(
                        TextSpan(
                          text: prodcut.toString(), // Default text
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1F1970),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Plates in cart',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1F1970),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Myorders(selectedProducts: selectedProducts)));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: (prodcut > 0
                          ? Color(0xff37B890)
                          : Color(0xff1F1970)),
                      fixedSize: Size(120, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        //borderRadius: BorderRadius.zero, //Rectangular border
                      ),
                    ),
                    child: Text(
                      'My Order',
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

class Card extends StatefulWidget {
  const Card({
    super.key,
    required this.text,
    required this.price,
    required this.image,
    required this.onSelect,
  });
  final String text;
  final String price;
  final String image;
  final void Function(Product product, bool isSelected) onSelect;

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  bool iselected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                iselected = !iselected;
              });
              widget.onSelect(
                Product(
                  image: widget.image,
                  text: widget.text,
                  price: widget.price,
                
                ),
              iselected,
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 250),
              decoration: BoxDecoration(
                border: Border.all(
                  color: iselected ? Color(0xff37B890) : Color(0xffE9F3FB),
                  width: 3,
                ),

                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Stack(
                children: [
                  Image.asset(widget.image, width: 152, height: 161),

                  if (iselected)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: ClipPath(
                        clipper: CornerClipper(),
                        child: Container(
                          width: 55,
                          height: 55,
                          color: Color(0xff37B890),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(top: 6, right: 8),
                              child: Icon(Icons.check, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1F1970),
            ),
          ),
          Text(
            widget.price,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1F1970),
            ),
          ),
        ],
      ),
    );
  }
}

class CornerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Product {
  final String image;
  final String text;
  final String price;

  Product({required this.text, required this.image, required this.price});
}


