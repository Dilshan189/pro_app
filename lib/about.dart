import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('About',style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),),
        backgroundColor: Colors.black26,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/WhatsApp Image 2024-06-17 at 00.17.00_368cc5e5.jpg'),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
                  color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),


            Text(
              "Welcome to our page! We are passionate about creating beautiful and functional web designs. Our goal is to provide the best user experience and aesthetic appeal through our projects.",
              style: GoogleFonts.poppins(
                  color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Features:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),

            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Android and Ios Mobile app Developer',style: TextStyle(color: Colors.white),),
            ),

            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Java Fullstack Developer',style: TextStyle(color: Colors.white),),
            ),

            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('ICT Teacher',style: TextStyle(color: Colors.white),),
            ),

            const SizedBox(height: 20),

            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),


            const ListTile(
              leading: Icon(Icons.email,color: Colors.grey,),
              title: Text('Dilshanrathnayaka089@gmail.com',style: TextStyle(color: Colors.white),),
            ),
            const ListTile(
              leading: Icon(Icons.phone,color: Colors.grey,),
              title: Text('+94 76 121 1220',style: TextStyle(color: Colors.white),),
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
}


