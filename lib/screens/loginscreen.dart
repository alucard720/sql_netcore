import 'package:flutter/material.dart';
import 'package:sql_netcore/widgets/input_decoration.dart';

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

  SingleChildScrollView cuerpocompleto(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 350,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
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
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        autocorrect: false,
                        decoration: Inputdecorations.inputDecoration(
                          hintext: 'ejemplo@hotmail.com',
                          labeltext: 'Correo Electronico',
                          icon: const Icon(Icons.alternate_email_rounded),
                        ),
                        validator: (value) {
                          String pattern =
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                          RegExp regExp = RegExp(pattern);
                          return regExp.hasMatch(value ?? '')
                              ? null
                              : 'El Email ingresado no es correcto';
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        autocorrect: false,
                        decoration: Inputdecorations.inputDecoration(
                            hintext: '*****',
                            labeltext: 'contrasena',
                            icon: const Icon(Icons.lock)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledColor: Colors.grey,
                        color: Colors.blueAccent,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80, vertical: 15),
                          child: const Text(
                            'Ingresar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Crear una nueva Cuenta',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
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
            top: 50,
            right: -30,
            child: bubble(),
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
