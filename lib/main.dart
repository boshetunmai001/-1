import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'adapt_size.dart' as adaptive;

void main() {
  runApp(const Authorization());
}

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Auth(),
    );
  }
}

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  int animationButton = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 245, 250, 255),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              'assets/Logo_back.svg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: adaptive.heightAdaptive(76, context),
            right: 0,
            left: 0,
            child: SvgPicture.asset('assets/LogotipPLTY.svg',
                width: adaptive.widthAdaptive(103, context),
                height: adaptive.heightAdaptive(103, context)),
          ),
          Align(
            alignment: const Alignment(0, -0.3),
            child: Container(
              height: adaptive.heightAdaptive(42, context),
              width: adaptive.widthAdaptive(256, context),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 150, 164, 242),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          animationButton = 1;
                        });
                      },
                      child: AnimatedContainer(
                        height: adaptive.heightAdaptive(42, context) - 4,
                        width: adaptive.widthAdaptive(128, context) - 2,
                        decoration: BoxDecoration(
                          color: (animationButton == 1)
                              ? const Color.fromARGB(255, 150, 164, 242)
                              : Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(13)),
                        ),
                        duration: const Duration(milliseconds: 300),
                        child: Center(
                          child: Text(
                            'Вход',
                            style: TextStyle(
                              color: (animationButton == 1)
                                  ? (Colors.white)
                                  : (const Color.fromARGB(255, 150, 164, 242)),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          animationButton = 2;
                        });
                      },
                      child: AnimatedContainer(
                        height: adaptive.heightAdaptive(42, context) - 4,
                        width: adaptive.widthAdaptive(128, context) - 2,
                        decoration: BoxDecoration(
                          color: (animationButton == 2)
                              ? (const Color.fromARGB(255, 150, 164, 242))
                              : (Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(13)),
                        ),
                        duration: const Duration(milliseconds: 300),
                        child: Center(
                          child: Text(
                            'Регистрация',
                            style: TextStyle(
                              color: (animationButton == 2)
                                  ? (Colors.white)
                                  : (const Color.fromARGB(255, 150, 164, 242)),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: adaptive.heightAdaptive(16, context)),
          Padding(
            padding: EdgeInsets.only(
                top: adaptive.heightAdaptive(334, context),
                left: adaptive.widthAdaptive(52, context)),
            child: Column(
              children: [
                Container(
                  width: adaptive.widthAdaptive(256, context),
                  height: adaptive.heightAdaptive(44, context),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Логин',
                        contentPadding: EdgeInsets.all(12)),
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                        fontSize: 14, color: Color.fromARGB(100, 48, 48, 48)),
                  ),
                ),
                SizedBox(height: adaptive.heightAdaptive(16, context)),
                Container(
                  width: adaptive.widthAdaptive(256, context),
                  height: adaptive.heightAdaptive(44, context),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Пароль',
                        contentPadding: EdgeInsets.all(12)),
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                        fontSize: 14, color: Color.fromARGB(100, 48, 48, 48)),
                  ),
                ),
                SizedBox(height: adaptive.heightAdaptive(8, context)),
                const Text('Восстановить пароль',
                    style: TextStyle(fontSize: 14)),
                SizedBox(height: adaptive.heightAdaptive(15, context)),
                Container(
                  width: adaptive.widthAdaptive(134, context),
                  height: adaptive.heightAdaptive(39, context),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 150, 164, 242),
                        width: 1,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: const Center(
                    child: Text(
                      'Войти',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 150, 164, 242)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class Entrance extends StatelessWidget {
//   const Entrance({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Align(
//         alignment: Alignment.bottomCenter,
//         child: Container(
//           height: adaptive.heightAdaptive(42, context),
//           width: adaptive.heightAdaptive(256, context),
//           decoration: const BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.all(Radius.circular(13)),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Registration extends StatelessWidget {
//   const Registration({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Align(
//         alignment: Alignment.bottomCenter,
//         child: Container(
//           height: adaptive.heightAdaptive(42, context),
//           width: adaptive.heightAdaptive(256, context),
//           decoration: const BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.all(Radius.circular(13)),
//           ),
//         ),
//       ),
//     );
//   }
// }
