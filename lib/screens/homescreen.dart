import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sql_netcore/screens/app_search.dart';

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
                const AppSearch(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 100)),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: 150,
                      height: 100,
                      child: Image.asset(
                        'images/Logo.png',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: 75,
                      child: Image.asset(
                        'images/mescyt.png',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      width: 100,
                      child: Image.asset(
                        'images/logo-infotep.png',
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
