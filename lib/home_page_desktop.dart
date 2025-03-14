import 'package:flutter/material.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 50), // Jarak kiri-kanan
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Gambar Profil
              Image.asset(
                'assets/home_profile.jpg',
                width: 500,
                height: 500,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, size: 100, color: Colors.red);
                },
              ),
              SizedBox(width: 20),

              // Column untuk Text dan Container
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hallo Semua !',
                      style: TextStyle(
                        fontFamily: 'love',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 10), //Jarak

                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.brown[200], // Warna background
                        borderRadius:
                            BorderRadius.circular(20), // Sudut melengkung
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 8,
                            offset: Offset(0, 4), // Bayangan
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat datang di Portofolio saya.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'comic',
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Ini adalah awal untuk mengenal siapa saya.\n\n'
                            'Halaman berikutnya akan mengungkap lebih banyak tentang saya dan perjalanan saya.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'comic',
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
