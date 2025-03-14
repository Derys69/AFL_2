import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              'Hallo Semua !',
              style: TextStyle(
                  fontFamily: 'love', fontSize: 35, color: Colors.black),
            ),
            Image.asset(
              'assets/home_profile.jpg',
              width: 350,
              height: 350,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error, size: 100, color: Colors.red);
              },
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(15), // Padding dalam kotak
              decoration: BoxDecoration(
                color: Colors.brown[200], // Warna background kotak
                borderRadius: BorderRadius.circular(20), // Sudut melengkung
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 8,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Ukuran sesuai konten
                children: [
                  Text(
                    'Selamat datang di Portofolio saya.',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontFamily: 'comic',
                    ),
                  ),
                  SizedBox(height: 10), // Jarak antar teks
                  Text(
                    'Ini adalah awal untuk mengenal siapa saya. Halaman berikutnya akan mengungkap lebih banyak tentang saya dan perjalanan saya.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'comic',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
