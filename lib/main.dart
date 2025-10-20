import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  void _showMessage(BuildContext context) {
    // ✅ Tambahkan ini biar tampil di console
    print('Tombol "Detail Profil" ditekan!');
    print('Halo! saya Ricki, ini profil saya 😊');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Halo! saya Ricki, ini profil saya 😊'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: const Color.fromARGB(255, 58, 169, 183),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FOTO PROFIL
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'), // ganti sesuai filemu
            ),
            const SizedBox(height: 16),

            // NAMA DAN DESKRIPSI
            const Text(
              'Ricki Maulana A',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Mahasiswa Informatika | Flutter Developer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // ROW DENGAN ICON DAN TEXT
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.deepPurple),
                SizedBox(width: 8),
                Text('rich@gmail.com'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on, color: Colors.deepPurple),
                SizedBox(width: 8),
                Text('Surabaya, Indonesia'),
              ],
            ),

            const SizedBox(height: 30),

            // TOMBOL
            ElevatedButton.icon(
              onPressed: () => _showMessage(context),
              icon: const Icon(Icons.person),
              label: const Text('Detail Profil'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 58, 169, 183),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ROW ICON SOSIAL MEDIA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.facebook_rounded, color: Colors.blue, size: 30),
                SizedBox(width: 20),
                Icon(Icons.camera_alt_rounded, color: Colors.pink, size: 30),
                SizedBox(width: 20),
                Icon(Icons.chat, color: Colors.green, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
