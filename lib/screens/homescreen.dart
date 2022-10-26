import 'package:flutter/material.dart';
import 'package:sql_netcore/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/Logoblanco.png",
                fit: BoxFit.contain,
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text('Portal Unico Educacion'),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return const MyApp();
                    }),
              ),
            )
          ],
        ));
  }
}
