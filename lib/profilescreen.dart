import 'package:flutter/material.dart';
import 'package:protfolio/project.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio/about.dart';
import 'contact.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a GlobalKey to control the Scaffold
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey, // Assign the key to Scaffold
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image and User Details Section
            Stack(
              children: [
                Container(
                  height: 600,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/WhatsApp Image 2024-06-17 at 00.17.00_368cc5e5.jpg'), // Replace with your image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  top: 20, // Adjust position as needed
                  right: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      IconButton(
                        onPressed: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        icon: const Icon(Icons.menu),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dilshan Rathnayaka.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 0.0),
                      Column(
                        children: [
                          Text("(Software Engineer).",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.cyanAccent,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'If you change your life, one day you will change your life..',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),

            const SizedBox(height: 5,),

            Padding(
              padding:const EdgeInsets.all(15),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _downloadCV();  // Trigger function to download the CV
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent,
                      foregroundColor: Colors.black,
                    ),
                    child: Text('Download MyCV',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding:const EdgeInsets.all(20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => _launchURL('https://www.facebook.com'),
                    child: Image.asset(
                      'assets/facebook_5968764.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 30,),

                  GestureDetector(
                    onTap: () => _launchURL('https://www.instagram.com'),
                    child: Image.asset(
                      'assets/instagram_2111463.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 30,),

                  GestureDetector(
                    onTap: () => _launchURL('https://www.linkedin.com'),
                    child: Image.asset(
                      'assets/linkedin_2504923.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 30,),

                  GestureDetector(
                    onTap: () => _launchURL('https://your-custom-url.com'),
                    child: Image.asset(
                      'assets/multiplication_13314731.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black54,
        child: ListView(
          children: [
            ListTile(
              title: Text('Portfolio',style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
              )),
            ),
            const Divider(thickness: 1,),

            ListTile(
              title: Text('Home',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),

            ListTile(
              title: Text('About',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 17),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutScreen()));
              },
            ),

            ListTile(
              title: Text('Project',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 17),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProjectsScreen()));
              },
            ),

            ListTile(
              title: Text('Contact',style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 17),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactFormScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }

  // Function to download the CV (can be linked to an actual URL or file)
  void _downloadCV() async {
    const url = 'https://your-cv-link.com';  // Replace with your actual CV link
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not download CV';
    }
  }

  // Function to launch the URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
