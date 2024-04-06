import 'package:flutter/material.dart';
import 'package:uts_pemrograman_mobile/detail_penulis.dart';
import 'package:uts_pemrograman_mobile/url_launcher.dart';
import 'package:uts_pemrograman_mobile/detail_selengkapnya.dart';
import 'package:uts_pemrograman_mobile/s1_agri.dart';
import 'package:uts_pemrograman_mobile/s2_agri.dart';
import 'package:uts_pemrograman_mobile/s3_agri.dart';

void main() {
  runApp(const FapertaUPNVJTApp());
}

class FapertaUPNVJTApp extends StatelessWidget {
  const FapertaUPNVJTApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Pertanian UPNVJT',
      theme: ThemeData(),
      home: FapertaHomePage(),
    );
  }
}

class FapertaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 225,
              child: Image.asset(
                'assets/logo-faperta1.jpg',
              ),
            ),
            SizedBox(width: 540),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    LaunchURL('https://faperta.upnjatim.ac.id');
                  },
                  child: Text(
                    '🌐 faperta.upnjatim.ac.id',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    LaunchURL('mailto:faperta@upnjatim.ac.id');
                  },
                  child: Text(
                    '✉ faperta@upnjatim.ac.id',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 450,
              child: Image.asset(
                'assets/bg-faperta.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              '🍃  ENJOY EXPLORING OUR PROFILE  🍃',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 26, 104, 7),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Faculty of Agriculture, Universitas Pembangunan Nasional "Veteran" Jawa Timur',
              style: TextStyle(
                fontSize: 17.0,
                color: Color.fromARGB(255, 41, 63, 36),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70.0),
            SingleChildScrollView(
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Tentang',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              '𝗙𝗔𝗞𝗨𝗟𝗧𝗔𝗦\n𝗣𝗘𝗥𝗧𝗔𝗡𝗜𝗔𝗡\n𝗨𝗣𝗡𝗩𝗝𝗧',
                              style: TextStyle(
                                fontSize: 45.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 63, 142, 46),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text( 
                              'Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur merupakan salah satu lembaga pendidikan tinggi bidang pertanian di Indonesia yang berdiri sejak 17 Mei 1968.......',                                
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return AboutFapertaPage();
                                  }),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 69, 127, 77),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      child: Text(
                                        'Selengkapnya >>',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Image.asset(
                          'assets/gedung-faperta.png',
                          height: 350,
                          width: 275,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 70),
            Container(
              color: Color.fromARGB(255, 67, 135, 77),
              padding: EdgeInsets.all(20.0),
              child: Text(
                '☘️  𝗣𝗿𝗼𝗴𝗿𝗮𝗺 𝗦𝘁𝘂𝗱𝗶  ☘️',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                String title = '';
                String imagePath = '';
                String description = '';
                switch (index) {
                  case 0:
                    title = '𝗔𝗴𝗿𝗶𝗯𝗶𝘀𝗻𝗶𝘀';
                    imagePath = 'assets/sarjana.png';
                    description =
                        'Program studi untuk gelar sarjana\nTerakreditasi Unggul';
                    break;
                  case 1:
                    title = '𝗠𝗮𝗴𝗶𝘀𝘁𝗲𝗿 𝗔𝗴𝗿𝗶𝗯𝗶𝘀𝗻𝗶𝘀';
                    imagePath = 'assets/magister.png';
                    description =
                        'Program studi untuk gelar magister\nTerakreditasi Unggul';
                    break;
                  case 2:
                    title = '𝗗𝗼𝗸𝘁𝗼𝗿 𝗔𝗴𝗿𝗶𝗯𝗶𝘀𝗻𝗶𝘀';
                    imagePath = 'assets/doktor.png';
                    description =
                        'Program studi untuk gelar doktor\nTerakreditasi Baik';
                    break;
                }
                return GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ProdiAgribisnis();
                          }),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return MagisterAgribisnis();
                          }),
                        );
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DoktorAgribisnis();
                          }),
                        );
                        break;
                    }
                  },
                  child: Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          imagePath,
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                description,
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5),
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 16.0,
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
              },
            ),
            SizedBox(height: 10),
            Container(
              color: Color.fromARGB(255, 67, 135, 77),
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HUBUNGI KAMI :',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Jl. Raya Rungkut Madya Gunung Anyar\nSurabaya, Jawa Timur, Indonesia\n60294',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'Tel.: 0318722432',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'Fax: 0318722432',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        GestureDetector(
                          onTap: () {
                            LaunchURL('mailto:faperta@upnjatim.ac.id');
                          },
                          child: Text(
                            'Email: faperta@upnjatim.ac.id',
                            style: TextStyle(
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            LaunchURL('https://faperta.upnjatim.ac.id');
                          },
                          child: Text(
                            'faperta.upnjatim.ac.id',
                            style: TextStyle(
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'KUNJUNGI PROFIL PENULIS :  ',
                    style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailPenulis(author: Penulis.data[0]);
                  }),
                );
              },
                child: 
                  Expanded(
                    child: Image.asset("assets/foto-almet.jpg",
                        fit: BoxFit.cover, height: 200, width: 200,),
                  ),
            ),
                ],
            ),
            ),
            Container(
              color: Color.fromARGB(255, 53, 95, 59),
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Copyright © 2024 | All Rights Reserved',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
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
    );
  }
}
