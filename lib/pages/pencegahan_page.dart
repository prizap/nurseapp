import 'package:flutter/material.dart';
import 'package:nurse_application_1/helper/function_helper.dart';

import '../const/xcolors.dart';
import '../widgets/mytext.dart';

class PencegahanPages extends StatelessWidget {
  const PencegahanPages({Key? key, required this.pencegahan}) : super(key: key);

  final List<Pencegahan> pencegahan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColor.hijau3,
          title: MyTextBold(
            size: 20,
            warna: Colors.white70,
            teks: 'Pencegahan',
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: pencegahan.length,
          itemBuilder: (context, index) {
            return _buildColumn(pencegahan[index]);
          },
        ));
  }

  Widget _buildColumn(Pencegahan pencegahan) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader("OBSERVASI"),
        _buildCardList(pencegahan.observasi),
        _buildSectionHeader("TERAPEUTIK"),
        _buildCardList(pencegahan.terapeutik),
        _buildSectionHeader("EDUKASI"),
        _buildCardList(pencegahan.edukasi),
        _buildSectionHeader("KOLABORASI"),
        _buildCardList(pencegahan.kolaborasi),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildCardList(List<String> items) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CardItem(
            item: items[index],
            index: index,
          );
        },
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.item, required this.index})
      : super(key: key);

  final String item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.check_circle_outline, color: MyColor.hijau3),
      title: Text(item),
    );
  }
}
