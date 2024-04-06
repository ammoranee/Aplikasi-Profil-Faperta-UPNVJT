import 'package:flutter/material.dart';
import 'package:uts_pemrograman_mobile/url_launcher.dart';

class Penulis {
  String imageUrl;
  String name;
  String ttl;
  String address;
  String phone;
  String email;
  String github;
  List<String> educations;

  Penulis(this.imageUrl, this.name, this.ttl, this.address, this.phone,
      this.email, this.github, this.educations);

  static List<Penulis> data = [
    Penulis(
      'assets/img-penulis.jpg',
      'Ammorhita Azza Natania Ertri',
      'Mojokerto, 23 Desember 2003',
      'Perum. Puri Asri Jl.Merak Blok G2 NO. 15, Dsn. Tambak Suruh, Ds. Tambakagung, Kec. Puri, Kab. Mojokerto, Jawa Timur',
      '+62 812-3522-4294',
      '22082010082@student.upnjatim.ac.id',
      'https://github.com/ammoranee',
      [
        'SMPN 1 Puri',
        'SMAN 2 Mojokerto',
        'UPN "Veteran" Jawa Timur',
      ],
    ),
  ];
}

class DetailPenulis extends StatefulWidget {
  final Penulis author;

  const DetailPenulis({Key? key, required this.author}) : super(key: key);

  @override
  _DetailPenulisState createState() => _DetailPenulisState();
}

class _DetailPenulisState extends State<DetailPenulis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Penulis'), 
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),                                                                                                                                  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  color: Color.fromARGB(255, 74, 150, 63),
                  child: Text(
                    '🔍  𝗕𝗶𝗼𝗱𝗮𝘁𝗮 𝗣𝗲𝗻𝘂𝗹𝗶𝘀  🔎',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage(widget.author.imageUrl),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  widget.author.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '📍 Tempat, Tanggal Lahir',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.author.ttl,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '📌 Alamat',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.author.address,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '📞 No. HP',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  widget.author.phone,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
        SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '📧 Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.author.email,
                    style: TextStyle(
                      fontSize: 15,
 
                    ),
                  ),
        ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '🔗 Github',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      LaunchURL(widget.author.github);
                    },
                    child: Text(
                      widget.author.github,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 141, 164, 140),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '🎓 Pendidikan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.author.educations.length,
                  itemBuilder: (BuildContext context, int index) {
                    final mission = widget.author.educations[index];
                    return Text('${index + 1}. ${mission}');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
 
  }
}
