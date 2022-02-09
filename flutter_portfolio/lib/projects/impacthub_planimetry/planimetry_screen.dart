import 'package:flutter/material.dart';
import 'package:flutter_portfolio/projects/impacthub_planimetry/floating_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import '../../ui/theme/style.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_portfolio/components/pixel_button.dart';
import 'package:flutter_portfolio/components/flutter_popup.dart';
import 'package:flutter_portfolio/components/whois_popup.dart';
import 'package:flutter_portfolio/projects/impacthub_planimetry/hidden_button.dart';
import 'dart:html' as html;
import 'dart:js' as js;


class PlanimetryScreen extends StatefulWidget{

  const PlanimetryScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return PlanimetryScreenState();
  }
}

class PlanimetryScreenState extends State<PlanimetryScreen> {

  int pageSteps = 0;

  @override
  Widget build(BuildContext context){


    Size screenSize = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: backgroundColor,
    body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: InteractiveViewer(
          scaleEnabled: true,
          constrained: false,
          minScale: 0.1,
          maxScale: 3,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                "lib/projects/impacthub_planimetry/img/hub.png",
                width: 2000,
                height: 1413,
              ),
              HiddenButton(
                height: 144,
                width: 410,
                title: "Thread Solutions",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 335,
                left: 614,
              ),
              HiddenButton(
                height: 60,
                width: 120,
                title: "Alma",
                text: "Ci occupiamo di digital marketing e posizionamento sui motori di ricerca, di analisi della posizione digitale e di sviluppo della comunicazione aziendale, del disegno di funnel di acquisizione clienti innovativi e automazione dei processi.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/02/IMG_20210503_112819-scaled-e1620038688826.jpg?lossy=0&strip=1&webp=1",
                top: 420,
                left: 1080,
              ),
              HiddenButton(
                height: 60,
                width: 250,
                title: "U-Hopper",
                text: "La nostra mission è creare valore partendo dai dati, sfruttando le tecnologie più avanzate disponibili sul mercato e nei laboratori di ricerca. Ci occupiamo di Big Data Analytics e sviluppiamo soluzioni Business Intelligence su misura, basate su metodi innovativi come Machine Learning ed Artificial Intelligence. Il nostro obiettivo è fornire un supporto analitico alle aziende e abilitare servizi personalizzati per i loro utenti.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/uhopper_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 420,
                left: 1205,
              ),
              HiddenButton(
                height: 52,
                width: 100,
                title: "Artica",
                text: "Ci occupiamo di digital marketing e posizionamento sui motori di ricerca, di analisi della posizione digitale e di sviluppo della comunicazione aziendale, del disegno di funnel di acquisizione clienti innovativi e automazione dei processi.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/02/IMG_20210503_112819-scaled-e1620038688826.jpg?lossy=0&strip=1&webp=1",
                top: 335,
                left: 1355,
              ),
              HiddenButton(
                height: 144,
                width: 255,
                title: "Belka",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 335,
                left: 1461,
              ),
              HiddenButton(
                height: 144,
                width: 165,
                title: "Fincons Group",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 335,
                left: 1719,
              ),
              HiddenButton(
                height: 128,
                width: 90,
                title: "Edseisgn",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 695,
                left: 481,
              ),
              HiddenButton(
                height: 80,
                width: 135,
                title: "Motorialab",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 830,
                left: 437,
              ),
              HiddenButton(
                height: 90,
                width: 84,
                title: "TopControl",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 780,
                left: 350,
              ),
              HiddenButton(
                height: 117,
                width: 68,
                title: "YANOVIS",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 960,
                left: 700,
              ),
              HiddenButton(
                height: 117,
                width: 68,
                title: "netlite",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 960,
                left: 776,
              ),
              HiddenButton(
                height: 117,
                width: 68,
                title: "DOVE VIVO",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 960,
                left: 850,
              ),
              HiddenButton(
                height: 74,
                width: 115,
                title: "level666",
                text: "Portali Internet e Corporate Intranet, applicazioni Web Enterprise sicure, agili, usabili e mobile ready per portare i dati del Business vicino a chi fa Business.",
                picUrl: "https://844778.smushcdn.com/2009159/wp-content/uploads/2020/05/threadsolutions_page_pic-scaled.jpg?size=1920x640&lossy=0&strip=1&webp=1",
                top: 1108,
                left: 804,
              ),
              Positioned(
                top: 390,
                left: 330,
                child: FloatingButton(
                  onTapLink: "",
                  title: "Colonnina Land Rover",
                  text: "Grazie al progetto in collaborazione con Land Rover, ImpactHub ha una colonnina di ricarica per auto elettriche",
                  color: Color(0xfffed702),
                  iconData: FontAwesomeIcons.bolt,
                )
              ),
            ],
          ),
        )
      ),
    );
  }
}