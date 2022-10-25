import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [logocaja(size), logo(), cuerpocompleto(context)],
        ),
      ),
    );
  }

  Column cuerpocompleto(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 250,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                )
              ]),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Crear una nueva Cuenta',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }

  SafeArea logo() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: double.infinity,
        child: Image.asset("images/Logo.png"),
      ),
    );
  }

  Container logocaja(Size size) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(
            top: 90,
            left: 30,
            child: bubble(),
          ),
          Positioned(
            top: -30,
            left: -30,
            child: bubble(),
          ),
          Positioned(
            child: bubble(),
            top: 50,
            right: -30,
          )
        ],
      ),
    );
  }

  Container bubble() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
