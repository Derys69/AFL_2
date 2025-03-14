import 'package:flutter/material.dart';

class AboutPageDesktop extends StatelessWidget {
  const AboutPageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Teks
              Expanded(
                flex: 2, // Proporsi lebih besar untuk teks
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.brown[200], // Warna background
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 6,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Halo! Saya Dery Surya Dharmawan, seorang mahasiswa Teknik Informatika di Universitas Ciputra yang memiliki minat besar dalam teknologi, inovasi, dan pengembangan diri.\n',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'comic'),
                      ),
                      Text(
                        'Saya memiliki pengalaman mengikuti Japan Technical Intern Training Program dari tahun 2018 hingga 2021 dalam industri mesin, yang memberi saya wawasan mendalam tentang dunia manufaktur dan teknologi di Jepang. Pengalaman ini tidak hanya memperkaya keterampilan teknis saya, tetapi juga mengasah kemampuan problem-solving, kedisiplinan, serta pemahaman tentang budaya kerja profesional di lingkungan internasional.\n',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'comic'),
                      ),
                      Text(
                        'Saat ini, saya tinggal di Hamamatsu, Shizuoka, Jepang, sambil terus mengembangkan keterampilan di bidang teknologi informasi. Saya percaya bahwa dengan memperluas jaringan sosial dan profesional, serta meningkatkan kemampuan berpikir kritis dan kreatif, saya dapat menciptakan peluang karir yang lebih baik di masa depan.\n',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'comic'),
                      ),
                      Text(
                        'Harapan saya adalah terus berkembang sebagai individu yang lebih baik, serta berkontribusi dalam dunia teknologi dengan solusi inovatif yang bermanfaat bagi banyak orang.\n',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'comic'),
                      ),
                      Text(
                        'Terima kasih telah mengunjungi portofolio saya! Jangan ragu untuk menghubungi saya jika ingin berdiskusi lebih lanjut.',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'comic'),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(width: 20), // Jarak antara teks dan gambar

              //  Gambar
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/profile.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error, size: 100, color: Colors.red);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
