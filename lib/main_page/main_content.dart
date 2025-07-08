import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Första sektionen (profil)
            SizedBox(
              width: double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 64),
                    // Profilbild
                    Container(
                      width: 150,
                      height: 150,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Namn
                    const Text(
                      'Axel Olsson',
                      style: TextStyle(
                        color: Color(0xC1545454),
                        fontSize: 64,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Beskrivning
                    const SizedBox(
                      width: 700,
                      child: Text(
                        'Student på SU, Institutionen för Data- och Systemvetenskap ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xAD004AAD),
                          fontSize: 24,
                          fontFamily: 'Arimo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Ikoner
                    SizedBox(
                      width: 88,
                      height: 36,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/gmail.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 52,
                            top: 0,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/linkedin.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 64),
                  ],
                ),
              ),
            ),
            // Andra sektionen (scrolla ner)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1300),
                height: 388,
                decoration: BoxDecoration(
                  color: const Color(0x1C8B8B8B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 36),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Hej!\n\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Jag heter Axel och är student på Stockholms Universitet.\nJag studerar till en kandidatexamen i Data- och systemvetenskap vid Stockholms universitet och tar examen våren 2026. Mitt stora intresse för IT, och främst IT-säkerhet, har lett till att jag har valt att nischa min utbildning mot denna bransch och jag ser fram emot att kunna utöka mina kunskaper inom området.\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}