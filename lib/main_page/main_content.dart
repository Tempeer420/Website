import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:website/main_page/cv_timeline.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          // Animated cloud background
          Positioned.fill(
            child: Lottie.asset(
              'assets/animations/cloud_animation.json',
              fit: BoxFit.cover,
              repeat: true,
            ),
          ),
          // Main content
          SingleChildScrollView(
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
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Transform.scale(
                            scale: 1.05,
                            child: Image.asset(
                              'assets/cv/profil_bild.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        // Namn
                        const Text(
                          'Axel Olsson',
                          style: TextStyle(
                            color: Colors.white,
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
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Arimo',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        // Ikoner
                        SizedBox(
                          width: 180,
                          height: 48,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 46,
                                  height: 46,
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Image.asset(
                                    "assets/icons/LI-In-Bug.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 59,
                                top: 0,
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Tooltip(
                                    message: 'axel.olsson123@gmail.com',
                                    child: GestureDetector(
                                      onTap: () async {
                                        await Clipboard.setData(const ClipboardData(text: 'axel.olsson123@gmail.com'));
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(
                                            content: Text('E-postadress kopierad!'),
                                            duration: Duration(seconds: 2),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 44,
                                        height: 44,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/icons/Gmail_icon.png"),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 120,
                                top: 0,
                                child: Container(
                                  width: 44,
                                  height: 44,
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: Image.asset(
                                    "assets/icons/github-mark-white.png",
                                    fit: BoxFit.contain,
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
                const SizedBox(height: 500),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1300),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: IntrinsicHeight(
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
                                          'Jag heter Axel och är student på Stockholms Universitet.\nJag studerar till en kandidatexamen i Data- och systemvetenskap vid Stockholms universitet och tar examen våren 2026. Mitt stora intresse för IT, och främst IT-säkerhet, har lett till att jag har valt att nischa min utbildning mot denna bransch. IT-säkerhetskurser som jag läst består av:\n'
                                          '\n- säk1 (Informationssäkerhet - modeller och synsätt)\n'
                                          '- säk2 (Informations- och datasäkerhet)\n'
                                          '- DIFO (Digital forensik)\n'
                                          '- SECORG (Informationssäkerhet i organisationer)\n'
                                          'Utöver detta har jag även läst kurser inom projektledning, systemutveckling, databashantering, programmering, sökmotorer m.m.\n',
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
                ),
                // Centrera CvTimeline
                const SizedBox(height: 150),
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 700),
                    child: const CvTimeline(),
                  ),
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ],
      ),
    );
  }
}