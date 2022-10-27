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
                  AppSearch(),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 50)),
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
              )
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
              title:
                  Text('H I S T O R Y', style: TextStyle(color: Colors.blue)),
            ),
            const ListTile(
              leading: Icon(Icons.link),
              title: Text('L O G O U T', style: TextStyle(color: Colors.blue)),
            ),
          ]),
        ));
  }
}
