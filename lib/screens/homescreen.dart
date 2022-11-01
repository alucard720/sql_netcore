import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURLMinerd() async {
  var url = Uri.parse("https://documentos.educacion.do/portal/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw "cant connect to $url";
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "PORTAL UNICO DE EDUCACION",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                ),
                Center(
                  child: CircularPercentIndicator(
                    animation: true,
                    animationDuration: 1000,
                    radius: 100,
                    lineWidth: 20,
                    percent: 0.5,
                    progressColor: Colors.blue,
                    backgroundColor: Colors.deepOrangeAccent.shade200,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: const Text('50%'),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 100,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/Logo.png'),
                              width: 100,
                              height: 100,
                            ),
                            const Center(
                              child: ElevatedButton(
                                onPressed: _launchURLMinerd,
                                child: Text(
                                  'Nueva Solicitud',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: const AssetImage('images/mescyt.png'),
                              width: 100,
                              height: 100,
                            ),
                            Center(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Nueva Solicitud',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(
                            image: const AssetImage('images/logo-infotep.png'),
                            width: 100,
                            height: 100,
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Nueva Solicitud',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.white,
        child:
            // ignore: prefer_const_literals_to_create_immutables
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const DrawerHeader(
              child: Icon(
            Icons.person_outlined,
            size: 50,
          )),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'M E N U',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.message),
            title: Text(
              'M E S S A G E',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.history),
            title: Text('H I S T O R Y', style: TextStyle(color: Colors.blue)),
          ),
          const ListTile(
            leading: Icon(Icons.link),
            title: Text('L O G O U T', style: TextStyle(color: Colors.blue)),
          ),
        ]),
      ),
    );
  }
}
