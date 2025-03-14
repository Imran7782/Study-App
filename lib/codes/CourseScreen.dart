// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CourseScreen extends StatefulWidget {
  final String corname;
  bool vedioSection = true;

  CourseScreen(this.corname, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(234, 255, 255, 255),
        centerTitle: true,
        title: Text(
          widget.corname,
          style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color.fromARGB(255, 17, 17, 18),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 228, 228),
                image: DecorationImage(
                  image: AssetImage("assets/images/${widget.corname}.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.deepPurple,
                    size: 45,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Text(
                "${widget.corname} complete course",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                "Created by professional programmers",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "55 Videos",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.vedioSection = true;
                    });
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: widget.vedioSection
                            ? Colors.deepPurple.withOpacity(0.5)
                            : Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.vedioSection = false;
                    });
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                        color: !widget.vedioSection
                            ? Colors.deepPurple.withOpacity(0.5)
                            : Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Display ListTile based on the selected section
            if (widget.vedioSection)
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true, // Prevent overflow
                 scrollDirection: Axis.vertical,// Disable scrolling
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 128, 79, 214),
                        shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.play_arrow,
                      color: Colors.white,),
                    ),
                    title: Text("${widget.corname} Part ${index + 1}",style:const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ) ,),
                    subtitle:const Text(" 20 hours 50 min",style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),),
                  );
                },
              ),
            if (!widget.vedioSection)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Description content for ${widget.corname}. \nFlutter is an open-source UI software development kit created by Google. It enables developers to build natively compiled applications for mobile, web, and desktop from a single codebase. Here are some key features and concepts:.",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold

                    ,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
