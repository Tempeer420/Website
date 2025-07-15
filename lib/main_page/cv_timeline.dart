import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CvTimeline extends StatelessWidget {
  const CvTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.1,
          isFirst: true,
          indicatorStyle: IndicatorStyle(
            width: 60,
            color: Colors.blue,
            iconStyle: IconStyle(
              iconData: Icons.adjust,
              color: Colors.white,
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Text(
                'Revisor',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'HUDDINGE BÅGSKYTTEKLUBB | 2024 -- | Huddinge\n'
                'Arbetar som revisor för Huddinge Bågskytteklubb, där jag ansvarar för att granska och säkerställa korrekt hantering av klubbens ekonomi. Detta inkluderar granskning av bokföring, budgetuppföljning och rapportering till styrelsen.',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.1,
          indicatorStyle: IndicatorStyle(
            width: 60,
            color: Colors.blue,
            iconStyle: IconStyle(
              iconData: Icons.school,
              color: Colors.white,
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Text(
                'Kandidatexamen i Data- och systemvetenskap',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'STOCKHOLMS UNIVERSITET | 2024 - 2026 | Stockholm\n'
                'Studerar Data- och systemvetenskap med fokus på programmering, systemutveckling och databasdesign. Utbildningen omfattar både teoretiska och praktiska moment, inklusive projektarbete och samarbete med företag inom IT-branschen.',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
         TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.1,
          indicatorStyle: IndicatorStyle(
            width: 60,
            color: Colors.purple,
            iconStyle: IconStyle(
              iconData: Icons.account_balance,
              color: Colors.white,
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Text(
                'KYC Analyst',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'SEB | 2023-01 – 2023-08 | Solna\n'
                'Arbetade heltid med AML/KYC-granskning av företagskunder på SEB, med fokus på att identifiera och förebygga finansiella brott. Arbetet innefattade riskbedömning, kundanalys och säkerställande av att verksamheten uppfyller regulatoriska krav och interna riktlinjer.',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.1,
          indicatorStyle: IndicatorStyle(
            width: 60,
            color: Colors.teal,
            iconStyle: IconStyle(
              iconData: Icons.build,
              color: Colors.white,
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Text(
                'Hållplatsservice',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Keolis | 2022 – | Stockholm\n'
                'Jobbar extra som serviceman av busshållplatser med ansvar för klottersanering, hantering av hållplatsflyttar, glaskross samt felsökning och byte av elektronik i hållplatsskydd, m.m.',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.1,
          isLast: true,
          indicatorStyle: IndicatorStyle(
            width: 60,
            color: Colors.deepOrange,
            iconStyle: IconStyle(
              iconData: Icons.emoji_events,
              color: Colors.white,
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Text(
                'VD Your Evening Flower UF',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text(
                'Sjödalsgymnasiet | 2021 - 2022 | Huddinge\n'
                'VD för UF-företaget Your Evening Flower UF som designade och levererade handbundna buketter. Ansvarade för leverantörsrelationer, inköp, marknadsföring, försäljning och ekonomihantering. Vann investeringspriset på Arena Huddinges UF-mässa samt Sjödals monterpris. Omsättning: 50 000 kr.',
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
      ],
    );
  }
}