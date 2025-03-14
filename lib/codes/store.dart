import 'package:flutter/material.dart';

class Store1 extends StatefulWidget {
  const Store1({super.key});

  @override
  State<StatefulWidget> createState() {
    return _store1state();
  }
}

class _store1state extends State<Store1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 108, 66, 181),
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0), // Adding some padding to the entire body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the left
          children: [
            const Text(
              "Teaching Group:",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), // Adds space between the title and the text
            const Text(
              "Welcome to [App Name], your go-to platform for learning programming languages and "
              "development tools! Whether you're just starting out or looking to enhance your skills, "
              "we provide comprehensive tutorials and resources on languages like C++, Python, Java, "
              "Flutter, and more. Our mission is to empower learners of all levels with the knowledge "
              "and practical skills needed to succeed in today's tech-driven world. Join us and start your coding journey today!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20,),

           const Center(
            child:  Text("Follow us for moreinformation",
            style: TextStyle(
              color: Color.fromARGB(143, 255, 255, 255)
             , fontSize: 20,
             fontWeight: FontWeight.bold
            ),),
           )

            ,const SizedBox(height:60,)
           ,Center(
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Image.asset("assets/images/Facebook.Logo.png"),
                ),
              ),
              const SizedBox(width: 20,),
               Container(
                height: 40,
                width:40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Image.asset("assets/images/GitHub-Symbol.png",
                  color: Colors.white,
                  ),
                  
                ),
              ),
                const SizedBox(width: 20,),
               Container(
                height: 30,
                width:30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Image.asset("assets/images/Twitter-new-logo.jpeg",
                  
                  ),
                  
                ),
              )
            ],
           ),
           )
          ],
        ),
      ),
    );
  }
}
