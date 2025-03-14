import 'package:flutter/material.dart';
import 'package:studyapp/codes/CourseScreen.dart';



      // Cart data
List<String> cartName = [
  "Category",
  "Live Record",
  "Free Courses",
  "Classes",
  "Book Store",
  "Leader Board"
];

List<Color> cartColor = [
  const Color(0xFFFF8383),
  const Color(0xFFFFD383),
  const Color(0xFFFFE383),
  const Color.fromARGB(255, 197, 140, 140),
  const Color(0xFFEFEF83),
  const Color.fromARGB(255, 216, 63, 63)
];

List<Icon> cartIcon = [
  const Icon(Icons.category, color: Colors.white),
  const Icon(Icons.play_circle_fill),
  const Icon(Icons.assessment),
  const Icon(Icons.video_library),
  const Icon(Icons.store),
  const Icon(Icons.play_circle_fill),
];

List<String> corname = [
  'Flutter',
  'c++',
  'python', // Corrected spelling
  'react' // Corrected spelling
];

class xanw1 extends StatefulWidget{
  const xanw1({super.key});

  @override
  State<StatefulWidget> createState() {
   return _xanw1State();
  }
}

class _xanw1State extends State<xanw1> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body:ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard, size: 30, color: Colors.white),
                    Icon(Icons.notifications, size: 30, color: Colors.white),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Hello, student",
                    style: TextStyle(
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search here',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 14,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
            child: SizedBox(
              height: 200,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                ),
                itemCount: cartName.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: cartColor[index],
                        ),
                        child: Center(
                          child: cartIcon[index],
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        cartName[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Courses",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: corname.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseScreen(corname[index]),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/${corname[index]}.png", // Ensure the path is correct
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        corname[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "55 videos",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ), 
   );
}
}