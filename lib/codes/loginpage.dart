import 'package:flutter/material.dart';
import 'package:studyapp/codes/signin.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 104, 65, 173),
      body: Column(
        children: [
          // Welcome Textz
          const Padding(
            padding: EdgeInsets.only(top: 100, bottom: 20), // Adjust top and bottom padding
            child: Center(
              child: Text(
                "Welcome to Login Page!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
          // Space between the welcome text and the form
          const SizedBox(height: 20),

          // Card for login form
          Expanded(
            child: Card(
              margin: const EdgeInsets.all(10),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Padding inside the card
                child: Column(
                  children: [
                    // Username TextField
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        suffixIcon: Icon(Icons.check_box_outline_blank_rounded),
                        border: UnderlineInputBorder()
                      ),
                    ),
                    const SizedBox(height: 40), // Space between fields
                    
                    // Password TextField
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(Icons.password),
                        border:UnderlineInputBorder(

                        ),
                      ),
                    ),
                    const SizedBox(height: 40), 
                 // Space below the password field
                    
                    // Login Button
                   Container(
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 200,
                      color: Colors.deepPurple,
                      child: ElevatedButton(
                           style: const ButtonStyle(

                            backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
                            shape: WidgetStatePropertyAll(CircleBorder())
                           ),
                      onPressed: () {
                        // Handle login action
                      },
                      child: const Text('Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    ),
                    const SizedBox(height: 20,),
                  Row(
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(left:80),
                       child: Row(
                        children: [
                           const Padding(padding: EdgeInsets.only(),
                    child: Center(
                      child: Text("Don't have account ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),),
                    ),),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder:(context) => const Signin()));
                    },
                    child: Container(
                      child:const Center(
                        child: Text("Sign in",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          
                        ),),
                      ),
                      
                    ),
                  )
                        ],
                       ),)
                    ],
                  )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
