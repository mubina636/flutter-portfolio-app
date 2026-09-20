import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screens/splash_screen/firstpage.dart';

class Vertification extends StatefulWidget {
  const Vertification({super.key});

  @override
  State<Vertification> createState() => _VertificationState();
}

class _VertificationState extends State<Vertification> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Padding(
         padding: const EdgeInsets.only( top: 30),
         child: Icon(Icons.arrow_back_sharp,color: Color(0xff1F1970),),
       ),
      ),
      body: Form(
        key: _formkey,
        child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    
                        crossAxisAlignment: CrossAxisAlignment.start,   
                  children: [
                    Text(
                      'Enter OTP',
                     textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1F1970),
                        
                      ),
                    ),
                    Text(
                      'Please check your message box.',
                      style: TextStyle(
                        color: Color(0xFF689AC0),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  child: SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE9F3FB)),
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                      ),

                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),

                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  child: SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE9F3FB)),
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                      ),

                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),

                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  child: SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE9F3FB)),
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                      ),

                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),

                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 17,
                  ),
                  child: SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE9F3FB)),
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                      ),

                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),

                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 17,
                  ),
                  child: SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE9F3FB)),
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                      ),

                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),

                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ),
              ],
            ),
           
           SizedBox(height: 100,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                         TextSpan(
            text: 'If you don’t receive a code! ', // Default text
            style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                 color: Color(0xFF689AC0)
                ),
            children: <TextSpan>[
              TextSpan(
                text: ' Resend',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1F1970),
                ),
              ),
            ],
                         ),
                       ),
           SizedBox(height: 20,),
                       ElevatedButton(
                         onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Firstpage()));
                         },
                         style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff1F1970),
            minimumSize: Size(299, 76),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
            ),
                         ),
           
                         child: Text(
            'Confirm OTP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
                         ),
                       )
            ],
           )
          ],
        ),
      ),
    );
  }
}
