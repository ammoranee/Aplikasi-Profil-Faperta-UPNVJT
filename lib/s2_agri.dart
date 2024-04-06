import 'package:flutter/material.dart';
import 'package:uts_pemrograman_mobile/url_launcher.dart';

class MagisterAgribisnis extends StatelessWidget {
  final Map<String, String> visi = {
    '1':
        'Menjadi program studi magister agribisnis yang unggul dan berkarakter bela negara',
  };
  final Map<String, String> misi = {
    '1':
        'Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agroindustri dan pemasaran sehingga mampu menciptakan/ mengisi peluang kerja dalam bidang agribisnis',
    '2':
        'Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berdaya guna untuk kesejahteraan masyarakat',
    '3':
        'Menyelenggarakan pengabdian kepada masyarakat berbasis riset di bidang agribisnis dan kearifan lokal',
    '4':
        'Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran',
    '5':
        'Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan menajerial di bidang agribisnis',
    '6': 'Meningkatkan sistem pengelolaan sarana dan prasarana terpadu',
    '7':
        'Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis baik dalam dan luar negeri',
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
              LaunchURL('https://magri.upnjatim.ac.id/');
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
              LaunchURL('mailto:magri@upnjatim.ac.id');
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
                  'assets/Logo-Agribisnis-2.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(20.0),
                color: Color.fromARGB(255, 63, 142, 46),
                child: Text(
                  '𝗣𝗿𝗼𝗴𝗿𝗮𝗺 𝗦𝘁𝘂𝗱𝗶 𝗦𝟮 𝗔𝗴𝗿𝗶𝗯𝗶𝘀𝗻𝗶𝘀',
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
                            'Program Magister Agribisnis Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 1999, dengan membuka program studi Magister Manajemen Agribisnis, (SK Dirjen Dikti No. 390/Dikti/Kep/1999). Pada Tahun Akademik 2016/2017 jumlah mahasiswa aktif Magister Agribisnis sebanyak 39 orang. Sampai Semester Gasal Tahun 2016/2017 telah meluluskan Magister Agribisnis 490 orang. Program Pascasarjana memiliki berbagai macam fasilitas yang memadai seperti ruang kuliah yang nyaman, laboratorium komputer,   fasilitas   IT, wifi area, teleconference, laboratorium bahasa dan perpustakaan. Tenaga pengajar Guru Besar, Doktor, dan Praktisi/Profesional sebagai dosen tamu dan dosen tetap',
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Image.asset(
                      'assets/S2-agri.jpeg',
                      height: 250.0,
                      width: 400.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              _buildDataSection('𝗩 𝗶 𝘀 𝗶 ', visi),
              _buildDataSection('𝗠 𝗶 𝘀 𝗶', misi),
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
                'assets/akre-S2-agri.jpg.png',
                height: 400.0,
                width: 650.0,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 12.0),
               Text(
                  'Sesuai dengan keputusan BANPT-DIKTI yang dikeluarkan pada tanggal 9 April 2019, Program Studi Magister Agribisnis,\nFakultas Pertanian, Universitas Pembangunan "Nasional" Veteran Jawa Timur mendapatkan akreditasi A',
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
                                    'assets/kaprodi-agri2.png',
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
                                          'Dr. Ir. Mubarokah, M.T.',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 26, 104, 7),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'NIP                             :  19621114 198803 2 00 1\n\n'
                                          'Jabatan Struktural   :  Koor Prodi Magister Agribisnis\n\n'
                                          'Jabatan Fungsional  :  Lektor\n\n'
                                          'Pangkat / Golongan  : Pembina / IV/a',
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
                                                    'assets/dsn1_agri2.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'Dr. Ir. Indra Tjahaja Amir, M.P.',
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
                                                    'NIP :\n19581118 198903 1 00 1\n\nJabatan Struktural :\nDosen Tetap\n\nJabatan Fungsional : \nLektor\n\nPangkat / Golongan :\nPembina / IV/a',
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
                                                    'assets/dsn2_agri2.jpg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'Dr. Ir. Pawana Nur Indah, M.Si.',
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
                                                    'NPT :\n89456600234\n\nJabatan Struktural :\nDosen NIDK\n\nJabatan Fungsional : \nLektor Kepala\n\nPangkat / Golongan :\nPembina / IV/a',
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
                                                  SizedBox(height: 10.0),
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
                                  'assets/web-agri2.png',
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
                                              'https://magri.upnjatim.ac.id/');
                                        },
                                        child: Text(
                                          '🌐 magri.upnjatim.ac.id',
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
                                                          'https://magri.upnjatim.ac.id/promosi-maba-pascasarjana-di-dinas-pertamian-kab-gresik-2/');
                                                    },
                                                    child: 
                                                  Image.asset(
                                                    'assets/prestasi_S2.jpeg',
                                                    height: 150.0,
                                                    width: 150.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  ),
                                                  SizedBox(height: 10.0),
                                                  Text(
                                                    'Promosi MABA Pascasarjana di Dinas Pertamian Kab. Gresik',
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
