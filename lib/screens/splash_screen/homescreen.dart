import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screens/splash_screen/vertification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController controller = TextEditingController();

  Country? chosenCountry;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/lemon.png', width: 60, height: 60),

            const SizedBox(height: 8),

            const Text(
              'Limester',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1F1970),
              ),
            ),
            SizedBox(
              height: 60,
              width: 315,
              child: Text(
                'Booking food is made easy through three easy steps. Browse, Order, and TrackEat good and eat exciting.',
                style: TextStyle(color: Color(0xFF689AC0), fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),

            const SizedBox(height: 24),

            Row(
              children: [
                // Большое поле
                Expanded(
                  child: Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFE9F3FB),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        // Страна
                        InkWell(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              showPhoneCode: true,
                              onSelect: (Country country) {
                                setState(() {
                                  chosenCountry = country;
                                });
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                chosenCountry?.flagEmoji ?? '🇺🇿',
                                style: const TextStyle(fontSize: 22),
                              ),
                              const SizedBox(width: 4),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.indigo,
                                size: 20,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 12),

                        // Код страны
                        Text(
                          '+${chosenCountry?.phoneCode ?? '998'}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(width: 8),

                        // Номер телефона
                        Expanded(
                          child: TextFormField(
                            controller: controller,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: const InputDecoration(
                              hintText: 'Mobile number',
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                // Кнопка
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ElevatedButton(
                    
                    onPressed: () {
                      print(controller.text);
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Vertification() ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xFF1F1970),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Icon(Icons.arrow_forward, size: 30, color: Colors.white,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
