import 'package:flutter/material.dart';
import 'package:studyapp/codes/Homepage.dart';
// Ensure the file name matches your actual homepage file name

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: 
          Container(
            alignment: Alignment.topCenter,
            height: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 117, 69, 199),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Text(
                    "Hello Student!",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/apl.jpeg.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
              color: Color.fromARGB(255, 249, 248, 248),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Text(
                    "Learning is Everything",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Learning with professional teachers\nwherever you are, dear student...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding:const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 40,vertical:12)),
                      backgroundColor: WidgetStateProperty.all(Colors.deepPurple),
                     // padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                    ),
                    onPressed: () {
                      // Navigate to Homepage when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Homepage()),
                      );
                    },
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    "Follow us for more information",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Facebook.Logo.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/github.png.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Twitter-new-logo.jpeg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
