import 'package:flutter/material.dart';
import 'package:nurse_application_1/const/xcolors.dart';
import 'package:nurse_application_1/helper/function_helper.dart';
import 'package:nurse_application_1/pages/pencegahan_page.dart';

import '../widgets/mytext.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    required this.penyakit,
    Key? key,
    required this.name,
    required this.umur,
    required this.nomorreg,
    required this.alamat,
  }) : super(key: key);
  final List<Penyakit> penyakit;
  final String name;
  final String umur;
  final String nomorreg;
  final String alamat;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late List<Penyakit> list;

  @override
  void initState() {
    list = setUp();
    super.initState();
  }

  List<Penyakit> setUp() {
    List<Penyakit> newList = [];

    for (var penyakit in widget.penyakit) {
      if (penyakit.getValue()) {
        newList.add(penyakit);
      }
    }
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.hijau3,
        title: MyTextBold(
          size: 20,
          warna: Colors.white70,
          teks: 'Luaran yang digunakan',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
              color: MyColor.bg,
              elevation: 8.0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                height: 200,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.person, size: 64),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              width: 150,
                              color: Colors.black54,
                              height: 2,
                            ),
                            const SizedBox(height: 4),
                            const Text('Alamat'),
                            Text(widget.alamat),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name ${widget.name}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text('Umur ${widget.umur}'),
                          ],
                        ),
                        const SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Nomor registrasi',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(widget.nomorreg),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )),
          ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return CardTiles(penyakit: list[index]);
            },
          ),
        ],
      ),
    );
  }
}

class CardTiles extends StatelessWidget {
  const CardTiles({Key? key, required this.penyakit}) : super(key: key);

  final Penyakit penyakit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                penyakit.name,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Langkah penanganan ${penyakit.luaranYgDigunakan}",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PencegahanPages(
                          pencegahan: penyakit.pencegahan,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Penjelasan",
                    style: TextStyle(color: MyColor.green),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
