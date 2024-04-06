import 'package:flutter/material.dart';
import 'package:uts_pemrograman_mobile/url_launcher.dart';

class AboutFapertaPage extends StatelessWidget {
  final Map<String, String> visi = {
    '1':
        'Terwujudnya fakultas yang unggul dalam pengembangan IPTEKS pertanian dan kewirausahaan, berjejaring global serta berkarakter bela negara',
  };

  final Map<String, String> misi = {
    '1':
        'Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara',
    '2':
        'Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian',
    '3':
        'Menyelenggarakan pengabdian kepada masyarakat melalui penerapan teknologi tepat guna berbasis kearifan lokal',
    '4': 'Menyelenggarakan tata kelola Fakultas yang baik dan bersih',
    '5': 'Mengembangkan kualitas sumber daya manusia berkarakter bela negara',
    '6':
        'Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di tingkat Fakultas',
    '7':
        'Meningkatkan kerjasama institusional dalam dan luar negeri melalui keunggulan Litdimas',
  };

  final Map<String, String> tujuan = {
    '1':
        'Menghasilkan lulusan yang kompeten, kompetitif berjiwa wirausaha, dan bela negara',
    '2':
        'Menghasilkan IPTEKS pertanian yang bermutu guna meningkatkan kesejahteraan masyarakat',
    '3': 'Berperan aktif dalam pemberdayaan masyarakat',
    '4':
        'Meningkatkan kinerja Tri Dharma Perguruan Tinggi (TDPT) Fakultas Pertanian',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Spacer(),
          IconButton(
            icon: Icon(Icons.language),
            color: Color.fromARGB(255, 91, 165, 230),
            onPressed: () {
              LaunchURL('https://faperta.upnjatim.ac.id');
            },
          ),
          Text(
            'website',
            style: TextStyle(
              color: Color.fromARGB(255, 91, 165, 230),
              fontSize: 13,
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.mail),
            color: Color.fromARGB(255, 91, 165, 230),
            onPressed: () {
              LaunchURL('mailto:faperta@upnjatim.ac.id');
            },
          ),
          Text(
            'email',
            style: TextStyle(
              color: Color.fromARGB(255, 91, 165, 230),
              fontSize: 13,
            ),
          ),
          Spacer(),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                color: Color.fromARGB(255, 63, 142, 46),
                child: Text(
                  '𝗙𝗮𝗸𝘂𝗹𝘁𝗮𝘀 𝗣𝗲𝗿𝘁𝗮𝗻𝗶𝗮𝗻 𝗨𝗣𝗡 "𝗩𝗲𝘁𝗲𝗿𝗮𝗻" 𝗝𝗮𝘄𝗮 𝗧𝗶𝗺𝘂𝗿',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fakultas Pertanian saat ini memiliki 2 program studi jenjang S-1, yaitu Agroteknologi dan Agribisnis, 2 program studi jenjang S-2 yaitu Magister Agribisnis dan Magister Agroteknologi, serta satu program studi S-3 yaitu program Doktor Agribisnis. Tahun 2015 sudah diusulkan ke Kementerian Riset Teknologi dan Pendidikan Tinggi untuk program Master (S2) Agroteknologi dan program Doktor (S3) Ilmu Pertanian. Berkat kerja keras dalam menjaga kualitas SDM, proses manajemen dan lulusannya, program studi S-1 mendapatkan akreditasi A / unggul. Program studi S-2 Agribisnis mendapatkan akreditasi A / unggul, S-2 Agroteknologi dan S-3 Agribisnis mendapatkan akreditasi baik dari BANPT-DIKTI.',
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Image.asset(
                      'assets/petinggi-faperta.jpeg',
                      height: 250.0,
                      width: 400.0,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              _buildDataSection('𝗩 𝗶 𝘀 𝗶 ', visi),
              _buildDataSection('𝗠 𝗶 𝘀 𝗶', misi),
              _buildDataSection('𝗧 𝘂 𝗷 𝘂 𝗮 𝗻', tujuan),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataSection(String title, Map<String, String> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          color: Color.fromARGB(255, 63, 142, 46),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildDataItems(data)
          ),
        ),
      ],
    );
  }
  List<Widget> _buildDataItems(Map<String, String> data) {
    List<Widget> items = [];
    data.forEach((key, value) {
      items.addAll([
        SizedBox(height: 20.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
            ),
            Expanded(
              child: Text(
                key.toUpperCase(),
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ]);
    });
    return items;
  }
}
