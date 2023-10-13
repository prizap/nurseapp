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
          IdentityCard(widget: widget),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return CardTiles(penyakit: list[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class IdentityCard extends StatelessWidget {
  const IdentityCard({super.key, required this.widget});
  final ResultPage widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: MyColor.hijau3,
          elevation: 5.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image.asset('assets/imgs/Intersect.png', scale: 0.9),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 2,
                                    color: MyColor.ungu1,
                                  )),
                              child: const Icon(
                                Icons.person,
                                size: 80,
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nama: ${widget.name}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: MyColor.bg,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.fade),
                                ),
                                Text(
                                  "No: ${widget.nomorreg}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: MyColor.bg,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.fade),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_pin,
                                  color: MyColor.ungu1,
                                  size: 24,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    widget.alamat,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black.withAlpha(150),
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.fade),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.lock_clock,
                                  color: MyColor.ungu1,
                                  size: 24,
                                ),
                                Text(
                                  "${widget.umur} Tahun",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withAlpha(150),
                                      fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardTiles extends StatelessWidget {
  const CardTiles({Key? key, required this.penyakit}) : super(key: key);

  final Penyakit penyakit;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: MyColor.hijau3)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  penyakit.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Langkah penanganan',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      penyakit.luaranYgDigunakan,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
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
                  style: ButtonStyle(
                    // backgroundColor: MyColor.hijau1,
                    backgroundColor: MaterialStateProperty.all(MyColor.hijau3),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Detail",
                    style: TextStyle(color: MyColor.bg),
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
