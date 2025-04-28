import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Icon Widget"),
        backgroundColor: Colors.teal.shade400,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.teal.shade50],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight, 
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal.withOpacity(0.2),
                  blurRadius: 10,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.fingerprint,
                      size: 60,
                      color: Color.fromARGB(225, 108, 161, 203),
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 196, 148, 164),
                          blurRadius: 5,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Text("🔐 Fingerprint", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(width: 40),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.settings_power,
                      size: 60,
                      color: Color.fromARGB(225, 243, 151, 53),
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(225, 230, 228, 133),
                          blurRadius: 5,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text("⚡ Power", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//      body: SvgPicture.asset("assets/icons/star.svg"),
/*
  Icon(
        Icons.fingerprint,
        size: 50,
        color: Colors.lightBlueAccent,
        semanticLabel: "fingerprint",
        shadows: [
          Shadow(
            color: const Color.fromARGB(255, 192, 154, 166),
            blurRadius: 5,
            offset: Offset(3, 3),
          ),
        ],
        ),
*/

