import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_pemrograman_mobile/url_launcher.dart';

class ProdiAgribisnis extends StatelessWidget {
  final Map<String, String> visi_misi = {
    '1':
        'Terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara',
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
              LaunchURL('https://agribis.upnjatim.ac.id');
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
              LaunchURL('mailto:agribisnis@upnjatim.ac.id');
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
              SizedBox(
                height: 350,
                child: Image.asset(
                  'assets/Logo-Agribisnis-1.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(20.0),
                color: Color.fromARGB(255, 63, 142, 46),
                child: Text(
                  '𝗣𝗿𝗼𝗴𝗿𝗮𝗺 𝗦𝘁𝘂𝗱𝗶 𝗦𝟭 𝗔𝗴𝗿𝗶𝗯𝗶𝘀𝗻𝗶𝘀',
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
                            'Program Studi Sarjana Agribisnis dibentuk berdasarkan SK Dirjen Dikti Nomor : 163/DIKTI/Kep/2007 Tanggal : 29 November 2007 dan mendapatkan Akreditasi A dari penilaian BAN-PT ',
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Image.asset(
                      'assets/s1-agri.jpeg',
                      height: 250.0,
                      width: 400.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              _buildDataSection('𝗩 𝗶 𝘀 𝗶  &  𝗠 𝗶 𝘀 𝗶', visi_misi),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 63, 142, 46),
                child: Text(
                  '𝗔 𝗸 𝗿 𝗲 𝗱 𝗶 𝘁 𝗮 𝘀 𝗶',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 15.0),
              Image.asset(
                'assets/akre-S1-agri.jpg',
                height: 400.0,
                width: 650.0,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 12.0),
                          Text(
                            'Sesuai dengan keputusan BANPT-DIKTI yang dikeluarkan pada tanggal 7 Nopember 2015, Program Studi Agribisnis,\nFakultas Pertanian, Universitas Pembangunan "Nasional" Veteran Jawa Timur mendapatkan akreditasi A',
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            color: Color.fromARGB(255, 63, 142, 46),
                            child: Text(
                              '𝗞 𝗲 𝘁 𝘂 𝗮   𝗣 𝗿 𝗼 𝗴 𝗿 𝗮 𝗺   𝗦 𝘁 𝘂 𝗱 𝗶',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    'assets/kaprodi-agri1.jpg',
                                    height: 250.0,
                                    width: 150.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 63, 142, 46),
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Prof. Dr. Ir. Syarif Imam Hidayat, M.M.',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 26, 104, 7),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'NIP                             :  19630218 198903 1 00 2\n\n'
                                          'Jabatan Struktural   :  Ketua Jurusan Agribisnis\n\n'
                                          'Jabatan Fungsional  :  Guru Besar\n\n'
                                          'Pangkat / Golongan  :  Pembina Utama Madya / IV/d',
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  color: Color.fromARGB(255, 63, 142, 46),
                                  child: Text(
                                    '𝗗 𝗼 𝘀 𝗲 𝗻',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            height: 500.0,
                                            child: Container(
                                              padding: EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 63, 142, 46),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/dsn1_agri1.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'Dr. Ida Syamsu Roidah, S.P.,M.MA.',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 26, 104, 7),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Text(
                                                    'NPT :\n21219860624284\n\nJabatan Struktural :\nKepala Laboratorium Komunikasi Pertanian\n\nJabatan Fungsional : \nAsisten Ahli\n\nPangkat / Golongan :\nPenata Muda Tingkat I / III/b',
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            height: 500.0,
                                            child: Container(
                                              padding: EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 63, 142, 46),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/dsn2_agri1.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'Dr. Dona Wahyuning Laily, S.P., M.P.',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 26, 104, 7),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'NPT :\n20219830810234\n\nJabatan Struktural :\nKepala Laboratorium Mnajemen Agribisnis\n\nJabatan Fungsional : \nAsisten Ahli\n\nPangkat / Golongan :\nPenata Muda Tingkat I / III/b',
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.0),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            height: 500.0,
                                            child: Container(
                                              padding: EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 63, 142, 46),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/dsn3_agri1.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'Prof. Dr. Ir. Teguh Soedarto, M.P.',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 26, 104, 7),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'NIP :\n195902111989031001\n\nJabatan Struktural :\nDosen Tetap\n\nJabatan Fungsional : \nGuru Besar\n\nPangkat / Golongan :\nPembina Utama Madya / IV/d',
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            height: 500.0,
                                            child: Container(
                                              padding: EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 63, 142, 46),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/dsn4_agri1.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'Dr. Ir. Eko Nurhadi, M.S.',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 26, 104, 7),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'NIP :\n8935660023\n\nJabatan Struktural :\nDosen NIDK\n\nJabatan Fungsional : \nLektor\n\nPangkat / Golongan :\nPenata Muda Tingkat I / IV/b',
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.0),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  color: Color.fromARGB(255, 63, 142, 46),
                                  child: Text(
                                    '𝗟 𝗮 𝗺 𝗮 𝗻  𝗪 𝗲 𝗯 𝘀 𝗶 𝘁 𝗲',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Image.asset(
                                  'assets/web-agri1.png',
                                  height: 400.0,
                                  width: 650.0,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          LaunchURL(
                                              'https://agribis.upnjatim.ac.id');
                                        },
                                        child: Text(
                                          '🌐 agribis.upnjatim.ac.id/',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  color: Color.fromARGB(255, 63, 142, 46),
                                  child: Text(
                                    '𝗣 𝗿 𝗲 𝘀 𝘁 𝗮 𝘀 𝗶  𝗠 𝗮 𝗵 𝗮 𝘀 𝗶 𝘀 𝘄 𝗮',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            height: 430.0,
                                            child: Container(
                                              padding: EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 63, 142, 46),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      LaunchURL(
                                                          'https://agribis.upnjatim.ac.id/2023/09/21/penguatan-pelaksanaan-agripreneur-digital-dengan-mitra-dalam-program-kompetisi-kampus-merdeka-pkkm-magang-dan-pelatihan-digital-marketing/');
                                                    },
                                                    child:
                                                  Image.asset(
                                                    'assets/prestasi 1.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  ),
                                                  SizedBox(height: 10.0),
                                                  Text(
                                                    'Pelaksanaan Agripreneur Digital dengan Mitra dalam Program Kompetisi Kampus Merdeka (PKKM) Magang dan Pelatihan Digital Marketing',
                                                     style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                    ),
                                                    textAlign:
                                                        TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            height: 430.0,
                                            child: Container(
                                              padding: EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 63, 142, 46),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      LaunchURL(
                                                          'https://agribis.upnjatim.ac.id/2023/09/21/program-studi-agribisnis-upn-veteran-jawa-timur-gelar-agripreneur-digital-camp-dorong-peningkatan-pemanfaatan-digital-marketing/');
                                                    },
                                                    child:
                                                  Image.asset(
                                                    'assets/prestasi2.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                  SizedBox(height: 10.0),
                                                  Text(
                                                    'Agribisnis UPN “Veteran” Jawa Timur Gelar “Agripreneur Digital Camp” Dorong Peningkatan Pemanfaatan Digital Marketing',
                                                     style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 300.0,
                                            height: 430.0,
                                            child: Container(
                                                padding: EdgeInsets.all(10.0),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color.fromARGB(
                                                        255, 63, 142, 46),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Column(
                                                children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      LaunchURL(
                                                          'https://agribis.upnjatim.ac.id/2023/09/21/program-studi-agribisnis-upn-veteran-jawa-timur-gelar-agripreneur-digital-camp-dorong-peningkatan-pemanfaatan-digital-marketing/');
                                                    },
                                                     child:
                                                  Image.asset(
                                                      'assets/prestasi3.jpg',
                                                      height: 150.0,
                                                      width: 150.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                ),
                                                    SizedBox(height: 10.0),
                                                    Text(
                                                      'Mahasiswa Universitas Pembangunan Nasional “Veteran” Jawa Timur berhasil mengubah lahan kosong menjadi Taman TOGA',
                                                       style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                    ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
        SizedBox(height: 20.0),
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
            children: _buildDataItems(data),
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
