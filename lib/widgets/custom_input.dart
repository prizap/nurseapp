import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../const/xcolors.dart';
import 'mytext.dart';

class CustomInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String? hint;
  final InputBorder? inputBorder;
  const CustomInput({Key? key, this.onChanged, this.hint, this.inputBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextField(
        onChanged: (v) => onChanged!(v),
        decoration: InputDecoration(hintText: hint!, border: inputBorder),
      ),
    );
  }
}

Widget textFld({
  final ValueChanged<String>? onChanged,
  TextEditingController? ctrl,
  TextInputType? kboadType,
  bool isPassword = false,
  String txt = 'test',
  bool readOnly = false,
  String? val,
  bool enabled = true,
  int? maxLength,
}) {
  return TextFormField(
    onChanged: (v) => onChanged!(v),
    decoration: InputDecoration(
      isDense: true,
      border: const OutlineInputBorder(),
      labelText: txt.toString(),
      labelStyle: const TextStyle(
        color: Colors.black87,
        fontFamily: "Poppins-Regular",
        fontSize: 12,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: MyColor.hijau2, width: 3.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    controller: ctrl,
    keyboardType: kboadType,
    obscureText: isPassword,
    readOnly: readOnly,
    initialValue: ctrl == null ? val : null,
    enabled: enabled,
    maxLength: maxLength,
  );
}

// Widget myCheckBox({
//   required String teks,
//   bool xvalue = false,
//   //required void Function(bool) handler,
// }) {
//   return Container(
//     margin: const EdgeInsets.all(1),
//     padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Flexible(
//           child: MyTextRegular(
//             size: 12,
//             warna: Colors.black87,
//             teks: teks,
//           ),
//         ),
//         Flexible(
//           child: GFCheckbox(
//             size: GFSize.SMALL,
//             type: GFCheckboxType.basic,
//             activeBgColor: MyColor.hijau2,
//             activeIcon:
//                 const Icon(Icons.check, size: 10, color: GFColors.WHITE),
//             // onChanged: (value) {
//             //   setState(() {
//             //     value = xvalue;
//             //     print('value $teks $xvalue');
//             //   });
//             // },
//             onChanged: handler,
//             value: xvalue,
//             inactiveIcon: null,
//           ),
//         )
//       ],
//     ),
//   );
// }

class MyCheckBox extends StatefulWidget {
  MyCheckBox({
    super.key,
    this.active = false,
    required this.onChanged,
    required this.label,
    required this.callback,
  });

  bool active;
  final ValueChanged<bool> onChanged;
  final String label;
  final Function(bool) callback;

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  void _handleTap(bool newVal) {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: MyTextRegular(
              size: 12,
              warna: Colors.black87,
              teks: widget.label,
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              //onChanged: _handleTap,
              onChanged: (value) {
                widget.callback(value!);
                setState(() => widget.active = !widget.active);
              },
              value: widget.active,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }
}

Widget myComboBox({
  final ValueChanged<bool>? onChanged,
  String label = '',
  bool val = false,
}) {
  return GFCard(
    margin: const EdgeInsets.all(1),
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: MyTextRegular(
            size: 12,
            warna: Colors.black87,
            teks: label,
          ),
        ),
        Flexible(
          child: GFCheckbox(
            size: GFSize.SMALL,
            type: GFCheckboxType.circle,
            activeBgColor: MyColor.hijau2,
            //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
            onChanged: (value) => onChanged!(value),
            value: val,
            inactiveIcon: null,
          ),
        )
      ],
    ),
  );
}
