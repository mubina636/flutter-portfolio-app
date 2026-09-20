import 'package:flutter/material.dart';
import 'package:portfolio/screens/splash_screen/firstpage.dart';
import 'package:portfolio/screens/splash_screen/googlemap.dart';

class Preparingfood extends StatefulWidget {
  const Preparingfood({super.key});

  @override
  State<Preparingfood> createState() => _PreparingfoodState();
}

class _PreparingfoodState extends State<Preparingfood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage('assets/chef.png')),
                SizedBox(height: 10),
      
                const Text(
                  'Chef is preparing your food...', style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color(0xff1F1970),
                            ),
                  
                ),
      
                const SizedBox(height: 10),
      
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
                    width: 193,
                    height: 40,
                    child: Text(
                      'Please do some stretching until chef is cooking your food...',
                      textAlign: TextAlign.center,
                      style: TextStyle( fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff1F1970),),
                    ),
                  ),
                ),
      
                const SizedBox(height: 170),
      
                Container(
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
                          Text('Back to',style: TextStyle(  fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff1F1970),),),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Firstpage(),
                                ),
                              );
                            },
                            icon: Icon(Icons.home),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Googlemap()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1F1970),
      
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
      
                            //borderRadius: BorderRadius.zero, //Rectangular border
                          ),
                        ),
                        child: Text(
                          'Track order',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
