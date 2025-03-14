import 'package:flutter/material.dart';

class ContactPageDesktop extends StatelessWidget {
  const ContactPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hubungi Saya :',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20), // Jarak

              // WhatsApp
              Row(
                children: [
                  Image.asset(
                    'assets/phone.png',
                    width: 70,
                    height: 70,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, size: 100, color: Colors.red);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+81 70-1441-1154',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),

              SizedBox(height: 10), // Jarak

              // Email
              Row(
                children: [
                  Image.asset(
                    'assets/email.png', // Pastikan gambar email ada di assets
                    width: 70,
                    height: 70,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, size: 100, color: Colors.red);
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    'ddharmawan03@student.ciputra.ac.id',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
