import 'package:flutter/material.dart';

void main() => runApp(const AboutMeApp());

class AboutMeApp extends StatelessWidget {
  const AboutMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Silvia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const AboutMePage(),
    );
  }
}

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('About Silvia')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/Foto Silvia.jpeg'),
            ),
            const SizedBox(height: 16),
            Text('Silvia Kurnia Ahdiansyah',
                style: Theme.of(context).textTheme.headlineMedium),
            Text('Mahasiswa Teknik Informatika',
                style: TextStyle(color: scheme.primary)),
            const SizedBox(height: 24),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Halo aku adalah seorang perempuan yang lahir pada tanggal 03 Agustus 2006 di Bandung, tempat tinggalku di G-Land Ciwastra Park, Aku tinggal bersama Mamah, Bapak, dan Teteh. Yups aku adalah anak kedua alisa bungsu. Saat ini aku sedang menjalani pendidikan S1 di Universitas Teknologi Bandung (UTB), dan Aku bekerja di PT. Dwimetal Teknik Indonesia sebagai Administrasi K3 '
                  ', Cita-citaku menjadi orang have, agar aku bisa membeli barang atau makanan kesukaanku hihihi salah satunya Dimsum.',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: const [
                Chip(label: Text('Bermain Gitar')),
                Chip(label: Text('Menggambar')),
                
              ],
            ),
            const SizedBox(height: 16),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('silviakurniaahdiyansyah@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.link),
              title: Text('github.com/kurnia4670'),
            ),
          ],
        ),
      ),
    );
  }
}