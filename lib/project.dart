import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: Text(
          'Projects',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            projectCard(
              context,
              title: 'Project 1',
              description: 'A short description of project 1.',
            ),

            const SizedBox(height: 20),

            projectCard(
              context,
              title: 'Project 2',
              description: 'A short description of project 2.',
            ),
            const SizedBox(height: 20),

            projectCard(
              context,
              title: 'Project 3',
              description: 'A short description of project 3.',
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      },
        backgroundColor:Colors.cyanAccent,
        child:const Icon(Icons.arrow_back) ,),

    );
  }

  Widget projectCard(BuildContext context, {required String title, required String description}) {
    return Card(
      elevation: 15,
      shadowColor: Colors.cyanAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color(0xFF2C2C2C), // Dark color for the card background
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle learn more action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Learn More'),
            ),
          ],
        ),
      ),
    );
  }
}
