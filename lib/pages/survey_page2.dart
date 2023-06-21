import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurse_application_1/const/xcolors.dart';
import 'package:nurse_application_1/widgets/mytext.dart';

import '../widgets/custom_input.dart';

class SurveyPage2 extends StatefulWidget {
  const SurveyPage2({Key? key}) : super(key: key);

  @override
  State<SurveyPage2> createState() => _SurveyPage2State();
}

class _SurveyPage2State extends State<SurveyPage2> {
  int currentStep = 0;
  String _jenisKelaminValue = '0';
  var _tipeKedatangan;
  var _kecelakaan;
  var _kondisiKedatangan;
  var _diantar;
  var _informasiDiperoleh;
  var _kategoriTriase;
  var _beratSekarang;
  var _td1;
  var _td2;
  var _temperature1;
  var _temperature2;
  var _statusMental;
  var _airway;
  var _frekuensiNadi;
  bool _breathingAda = false;
  bool _breathingNormal = false;
  bool _breathingBatukTidakEfektif = false;
  bool _breathingSputum = false;
  bool _breathingDispnea = false;
  bool _breathingOtotBantuNafas = false;
  bool _breathingFrekuensiEkspirasi = false;
  bool _breathingNafasAbnormalTakipnea = false;
  bool _breathingNafasAbnormalBradipnea = false;
  bool _breathingNafasAbnormalHiperventilasiKussmaul = false;
  bool _breathingParoxysmal = false;
  bool _breathingOrtopnea = false;
  bool _breathingSuaraNafasJelas = false;
  bool _breathingSuaraNafasRonchi = false;
  bool _breathingSuaraNafasWheeze = false;
  bool _breathingSuaraNafasCreckels = false;
  bool _breathingSuaraNafasAbsent = false;
  bool _circulationNadiNormal = false;
  bool _circulationNadiTakikardi = false;
  bool _circulationNadiBradikardi = false;

  var ctrlNoReg = TextEditingController();

  // @override
  // void initState() {
  //   //initListRef();
  //   //initRadio();
  //   _tipeKedatangan = '';
  //   _kecelakaan = '';
  //   _kondisiKedatangan = '';
  //   _diantar = '';
  //   _informasiDiperoleh = '';
  //   _kategoriTriase = '';
  //   _beratSekarang = '';
  //   _td1 = '';
  //   _td2 = '';
  //   _temperature1 = '';
  //   _temperature2 = '';
  //   _statusMental = '';
  //   _airway = '';

  //   _breathingAda = false;
  //   _breathingNormal = false;
  //   _breathingBatukTidakEfektif = false;
  //   _breathingSputum = false;
  //   _breathingDispnea = false;
  //   _breathingOtotBantuNafas = false;
  //   _breathingFrekuensiEkspirasi = false;
  //   _breathingNafasAbnormalTakipnea = false;
  //   _breathingNafasAbnormalBradipnea = false;
  //   _breathingNafasAbnormalHiperventilasiKussmaul = false;
  //   _breathingParoxysmal = false;
  //   _breathingOrtopnea = false;

  //   super.initState();
  // }

  void _handleCheckBox(bool newValue, bool param) {
    setState(() {
      param = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: MyTextRegular(
            teks: 'Belum ada implementasi',
            size: 15,
            warna: Colors.yellowAccent,
          )));
          return;
        },
        icon: const Icon(FontAwesomeIcons.play),
        backgroundColor: MyColor.hijau3,
        label: MyTextRegular(
          size: 12,
          teks: 'Proses',
        ),
        //child: Text('Ambil Lokasi'),
      ),
      backgroundColor: MyColor.bg,
      appBar: AppBar(
        backgroundColor: MyColor.hijau3,
        title: MyTextBold(
          size: 20,
          warna: Colors.white70,
          teks: 'Input Data Pasien',
        ),
        centerTitle: true,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Stepper(
              elevation: 5,
              physics: const ClampingScrollPhysics(),
              type: StepperType.vertical,
              currentStep: currentStep,
              onStepCancel: () => currentStep == 0
                  ? null
                  : setState(() {
                      currentStep -= 1;
                    }),
              onStepContinue: () {
                bool isLastStep = (currentStep == getSteps().length - 1);
                if (isLastStep) {
                  //Do something with this information
                } else {
                  setState(() {
                    currentStep += 1;
                  });
                }
              },
              onStepTapped: (step) => setState(() {
                currentStep = step;
              }),
              steps: getSteps(),
            ),
          )),
    );
  }

  List<Step> getSteps() {
    return <Step>[
      buildDataDiriPasien(),
      buildPrimarySurvey(),
      buildAirway(),
      buildBreathing(),
      buildCirculation(),
      buildDisabilities(),
      buildNyeri(),
    ];
  }

  Step buildNyeri() {
    return Step(
      state: currentStep > 6 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 6,
      title: const Text("Nyeri"),
      content: const Column(
        children: [
          CustomInput(
            hint: "Bio",
            inputBorder: OutlineInputBorder(),
          ),
        ],
      ),
    );
  }

  Step buildDisabilities() {
    return Step(
      state: currentStep > 5 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 5,
      title: const Text("Disabilities"),
      content: const Column(
        children: [
          CustomInput(
            hint: "Bio",
            inputBorder: OutlineInputBorder(),
          ),
        ],
      ),
    );
  }

  Step buildCirculation() {
    return Step(
      state: currentStep > 4 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 4,
      title: const Text("Circulation"),
      content: Column(
        children: [
          GFCard(
            content: Column(
              children: [
                MyTextSemiBold(size: 12, teks: 'Nadi'),
                textFld(ctrl: ctrlNoReg, txt: 'Nadi (x/Menit)'),
                buildFrekuensiNadi(),
                circulationNadiNormal(),
                circulationNadiTakikardi(),
                circulationNadiBradikardi(),
                //MyCheckBox(onChanged: _handleCheckBox, label: 'Normal')
                //myCheckBox(teks: 'Normal', xvalue: _circulationNadiNormal, ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GFCard circulationNadiBradikardi() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Bradikardi',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.basic,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _circulationNadiBradikardi = value;
                      print(
                          'value breathing _circulationNadiBradikardi  $_circulationNadiBradikardi ');
                    });
                  },
                  value: _circulationNadiBradikardi,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  GFCard circulationNadiTakikardi() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Takikardi',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.basic,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _circulationNadiTakikardi = value;
                      print(
                          'value breathing _circulationNadiTakikardi  $_circulationNadiTakikardi ');
                    });
                  },
                  value: _circulationNadiTakikardi,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  GFCard circulationNadiNormal() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Normal',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.basic,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _circulationNadiNormal = value;
                      print(
                          'value breathing _circulationNadiNormal $_circulationNadiNormal');
                    });
                  },
                  value: _circulationNadiNormal,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Step buildBreathing() {
    return Step(
      state: currentStep > 3 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 3,
      title: const Text("Breathing"),
      content: Column(
        children: [
          buildBreathingOption(),
        ],
      ),
    );
  }

  Widget buildBreathingOption() {
    return Column(
      children: [
        breathingAda(),
        breathingNormal(),
        breathingBatukTdkEfektif(),
        breathingSputum(),
        breathingDispnea(),
        breathingOtotBantuNafas(),
        breathingEkspirasi(),
        breathingTakipnea(),
        breathingBradipnea(),
        breathingHiperventilasi(),
        breathingParoxysmal(),
        breathingOrtopnea(),
        const SizedBox(
          height: 5,
        ),
        // MyTextSemiBold(
        //   size: 15,
        //   teks: 'Suara Nafas',
        //   warna: Colors.black87,
        // ),
        breathingSuaraNafasJelas(),
        breathingSuaraNafasRonchi(),
        breathingSuaraNafasWheeze(),
        breathingSuaraNafasCreckels(),
        breathingSuaraNafasAbsent(),
        const SizedBox(
          height: 5,
        ),
        textFld(ctrl: ctrlNoReg, txt: 'Masalah Keperawatan'),
        //Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Masalah Keperawatan')),
        const SizedBox(
          height: 5,
        ),
        textFld(ctrl: ctrlNoReg, txt: 'Tindakan')
        // Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Tindakan')),
      ],
    );
  }

  GFCard breathingSuaraNafasAbsent() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Absent',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.basic,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _breathingSuaraNafasAbsent = value;
                      print(
                          'value breathing _breathingOrtopnea $_breathingSuaraNafasAbsent');
                    });
                  },
                  value: _breathingSuaraNafasAbsent,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kanan')),
              const SizedBox(
                width: 5,
              ),
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kiri')),
            ],
          ),
        ],
      ),
    );
  }

  GFCard breathingSuaraNafasCreckels() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Creckels',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.basic,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _breathingSuaraNafasCreckels = value;
                      print(
                          'value breathing _breathingOrtopnea $_breathingSuaraNafasCreckels');
                    });
                  },
                  value: _breathingSuaraNafasCreckels,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kanan')),
              const SizedBox(
                width: 5,
              ),
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kiri')),
            ],
          ),
        ],
      ),
    );
  }

  GFCard breathingSuaraNafasWheeze() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Wheeze',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.basic,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _breathingSuaraNafasWheeze = value;
                      print(
                          'value breathing _breathingOrtopnea $_breathingSuaraNafasWheeze');
                    });
                  },
                  value: _breathingSuaraNafasWheeze,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kanan')),
              const SizedBox(
                width: 5,
              ),
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kiri')),
            ],
          ),
        ],
      ),
    );
  }

  GFCard breathingSuaraNafasRonchi() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Ronchi',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.basic,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _breathingSuaraNafasRonchi = value;
                      print(
                          'value breathing _breathingOrtopnea $_breathingSuaraNafasRonchi');
                    });
                  },
                  value: _breathingSuaraNafasRonchi,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kanan')),
              const SizedBox(
                width: 5,
              ),
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kiri')),
            ],
          ),
        ],
      ),
    );
  }

  GFCard breathingSuaraNafasJelas() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Suara Nafas',
            warna: Colors.black87,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Jelas/Bersih',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.circle,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _breathingSuaraNafasJelas = value;
                      print(
                          'value breathing _breathingOrtopnea $_breathingSuaraNafasJelas');
                    });
                  },
                  value: _breathingSuaraNafasJelas,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kanan')),
              const SizedBox(
                width: 5,
              ),
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Kiri')),
            ],
          ),
        ],
      ),
    );
  }

  GFCard breathingOrtopnea() {
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
              teks: 'Ortopnea',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingOrtopnea = value;
                  print(
                      'value breathing _breathingOrtopnea $_breathingOrtopnea');
                });
              },
              value: _breathingOrtopnea,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingParoxysmal() {
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
              teks: 'Paroxysmal nocturnal dypnea (PND)',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingParoxysmal = value;
                  print(
                      'value breathing breathingParoxysmal $_breathingParoxysmal');
                });
              },
              value: _breathingParoxysmal,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingHiperventilasi() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: MyTextRegular(
              size: 10,
              warna: Colors.black87,
              teks:
                  'Adanya pola nafas abnormal - hiperventilasi kussmaul cheyne-stoes',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingNafasAbnormalHiperventilasiKussmaul = value;
                  print(
                      'value breathing gNafasAbnormalHiperventilasiKussmaul $_breathingNafasAbnormalHiperventilasiKussmaul');
                });
              },
              value: _breathingNafasAbnormalHiperventilasiKussmaul,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingBradipnea() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: MyTextRegular(
              size: 11,
              warna: Colors.black87,
              teks: 'Adanya pola nafas abnormal - Bradipnea',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingNafasAbnormalBradipnea = value;
                  print(
                      'value breathing NafasAbnormalBradipnea $_breathingNafasAbnormalBradipnea');
                });
              },
              value: _breathingNafasAbnormalBradipnea,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingTakipnea() {
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
              teks: 'Adanya pola nafas abnormal - Takpinea',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingNafasAbnormalTakipnea = value;
                  print(
                      'value breathing NafasAbnormalTakipnea $_breathingNafasAbnormalTakipnea');
                });
              },
              value: _breathingNafasAbnormalTakipnea,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingEkspirasi() {
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
              teks: 'Frekuensi ekspirasi memanjang',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingFrekuensiEkspirasi = value;
                  print(
                      'value breathing Otot Bantu Nafas $_breathingFrekuensiEkspirasi');
                });
              },
              value: _breathingFrekuensiEkspirasi,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingOtotBantuNafas() {
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
              teks: 'Penggunaan Otot Bantu Nafas',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingOtotBantuNafas = value;
                  print(
                      'value breathing Otot Bantu Nafas $_breathingOtotBantuNafas');
                });
              },
              value: _breathingOtotBantuNafas,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingDispnea() {
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
              teks: 'Dispnea',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingDispnea = value;
                  print('value breathing Dispena $_breathingDispnea');
                });
              },
              value: _breathingDispnea,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingSputum() {
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
              teks: 'Ada penumpukan Sputum',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingSputum = value;
                  print('value breathing sputum $_breathingSputum');
                });
              },
              value: _breathingSputum,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingBatukTdkEfektif() {
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
              teks: 'Batuk tidak efektif / tidak mampu batuk',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingBatukTidakEfektif = value;
                  print(
                      'value breathing tidak efektif $_breathingBatukTidakEfektif');
                });
              },
              value: _breathingBatukTidakEfektif,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingAda() {
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
              teks: 'Ada',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingAda = value;
                  print('value breathing ada $_breathingAda');
                });
              },
              value: _breathingAda,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  GFCard breathingNormal() {
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
              teks: 'Normal',
            ),
          ),
          Flexible(
            child: GFCheckbox(
              size: GFSize.SMALL,
              type: GFCheckboxType.circle,
              activeBgColor: MyColor.hijau2,
              //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
              onChanged: (value) {
                setState(() {
                  _breathingNormal = value;
                  print('value breathing normal $_breathingNormal');
                });
              },
              value: _breathingNormal,
              inactiveIcon: null,
            ),
          )
        ],
      ),
    );
  }

  Step buildAirway() {
    return Step(
      state: currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 2,
      title: const Text("Airway"),
      content: Column(
        children: [
          buildAirwayBox(),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Masalah Keperawatan'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Tindakan'),
        ],
      ),
    );
  }

  Widget buildAirwayBox() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Airway',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _airway,
              onChanged: (newValue) {
                setState(() {
                  _airway = newValue.toString();
                });
              },
              items: [
                'Paten',
                'Obstruksi Parsia',
                'Obstruksi Total',
                'Muntah/Aspirasi',
                'Lain-lain',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Step buildPrimarySurvey() {
    return Step(
      state: currentStep > 1 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 1,
      title: const Text("Primary Survey"),
      content: Column(
        children: [
          buildTriase(),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Tinggi Badan (cm)'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Berat Badan Sebelumnya (Kg)'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Berat Badan Sekarang (Kg)'),
          buildBeratBadanSekarang(),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              MyTextRegular(
                size: 15,
                teks: 'TD ',
                warna: Colors.black87,
              ),
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: '')),
              MyTextRegular(
                size: 15,
                teks: ' / ',
                warna: Colors.black87,
              ),
              Flexible(child: textFld(ctrl: ctrlNoReg, txt: '')),
              MyTextRegular(
                size: 15,
                teks: ' MmHg',
                warna: Colors.black87,
              ),
            ],
          ),
          Row(
            children: [
              Flexible(child: buildTD1()),
              Flexible(child: buildTD2()),
            ],
          ),
          textFld(ctrl: ctrlNoReg, txt: 'HR (x/menit)'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Resporatory Rate (x/menit)'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'SaO2 (%)'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Temperature (C)'),
          Row(
            children: [
              Flexible(child: buildTemperature1()),
              Flexible(child: buildTemperature2()),
            ],
          ),
          buildStatusMental(),
        ],
      ),
    );
  }

  Widget buildStatusMental() {
    return Container(
      //color: Colors.white70,
      height: 60,
      //width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Status Mental',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _statusMental,
              onChanged: (newValue) {
                setState(() {
                  _statusMental = newValue.toString();
                });
              },
              items: [
                'Sadar Penuh',
                'Respon terhadap verbal',
                'Respon terhadap nyeri',
                'Tidak Sadar',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTemperature1() {
    return Container(
      //color: Colors.white70,
      height: 60,
      //width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // MyTextRegular(
          //   size: 12,
          //   teks: 'Kategori Triase',
          //   warna: Colors.black87,
          // ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _temperature1,
              onChanged: (newValue) {
                setState(() {
                  _temperature1 = newValue.toString();
                });
              },
              items: [
                'Tinggi',
                'Normal',
                'Turun',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTemperature2() {
    return Container(
      //color: Colors.white70,
      height: 60,
      //width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // MyTextRegular(
          //   size: 12,
          //   teks: 'Kategori Triase',
          //   warna: Colors.black87,
          // ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _temperature2,
              onChanged: (newValue) {
                setState(() {
                  _temperature2 = newValue.toString();
                });
              },
              items: [
                'Axila',
                'Rectal (rc)',
                'Oral',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTD1() {
    return Container(
      //color: Colors.white70,
      height: 60,
      //width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // MyTextRegular(
          //   size: 12,
          //   teks: 'Berat Badan Sekarang',
          //   warna: Colors.black87,
          // ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _td1,
              onChanged: (newValue) {
                setState(() {
                  _td1 = newValue.toString();
                });
              },
              items: [
                'Tinggi',
                'Normal',
                'Turun',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTD2() {
    return Container(
      //color: Colors.white70,
      height: 60,
      //width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // MyTextRegular(
          //   size: 12,
          //   teks: 'Berat Badan Sekarang',
          //   warna: Colors.black87,
          // ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _td2,
              onChanged: (newValue) {
                setState(() {
                  _td2 = newValue.toString();
                });
              },
              items: [
                'Melebar',
                'Normal',
                'Menyempit',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Step buildDataDiriPasien() {
    return Step(
      state: currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 0,
      title: MyTextSemiBold(
        size: 12,
        teks: 'Data Diri Pasien',
        warna: Colors.black87,
      ),
      subtitle: MyTextRegular(
        size: 10,
        warna: Colors.black54,
        teks: 'Isian biodata Pasien',
      ),
      content: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Nomor Registrasi'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Tanggal MRS'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Nama'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Tgl Lahir'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Usia'),
          const SizedBox(
            height: 8,
          ),
          buildRButtonKelamin(),
          textFld(ctrl: ctrlNoReg, txt: 'Alamat'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Agama'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Jenis Pembayaran'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Waktu Kedatangan'),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Waktu Diperiksa'),
          const SizedBox(
            height: 8,
          ),
          buildTipeKedatangan(),
          buildKecelakaan(),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Tempat dan Waktu Kejadian'),
          buildKondisiKedatangan(),
          buildDiantarOleh(),
          const SizedBox(
            height: 8,
          ),
          textFld(ctrl: ctrlNoReg, txt: 'Mekanisme'),
          buildInformasiDiperoleh(),
        ],
      ),
    );
  }

  GFCard buildRButtonKelamin() {
    return GFCard(
        content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GFRadio(
          customBgColor: MyColor.hijau1,
          size: 18,
          activeBorderColor: Colors.green,
          value: '0',
          groupValue: _jenisKelaminValue,
          onChanged: (val) {
            setState(() {
              _jenisKelaminValue = '0';
            });
          },
          inactiveIcon: null,
          radioColor: Colors.green,
        ),
        MyTextRegular(
          size: 15,
          teks: 'L',
          warna: Colors.black87,
        ),
        GFRadio(
          size: 18,
          value: '1',
          groupValue: _jenisKelaminValue,
          onChanged: (value) {
            setState(() {
              _jenisKelaminValue = '1';
            });
          },
          inactiveIcon: null,
          activeBorderColor: Colors.green,
          radioColor: Colors.green,
        ),
        MyTextRegular(
          size: 15,
          teks: 'P',
          warna: Colors.black87,
        ),
      ],
    ));
  }

  Widget buildBeratBadanSekarang() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Berat Badan Sekarang',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _beratSekarang,
              onChanged: (newValue) {
                setState(() {
                  _beratSekarang = newValue.toString();
                });
              },
              items: [
                'Meningkat dalam waktu yang singkat',
                'Tetap',
                'Menurun',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTriase() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Kategori Triase',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _kategoriTriase,
              onChanged: (newValue) {
                setState(() {
                  _kategoriTriase = newValue.toString();
                });
              },
              items: [
                'P1',
                'P2',
                'P3',
                'DOA',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFrekuensiNadi() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Frekuensi Nadi',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: Flexible(
              child: GFDropdown(
                isExpanded: true,
                padding: const EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(5),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.white,
                value: _frekuensiNadi,
                onChanged: (newValue) {
                  setState(() {
                    _frekuensiNadi = newValue.toString();
                  });
                },
                items: [
                  'Meningkat',
                  'Normal',
                  'Menurun',
                ]
                    .map((value) => DropdownMenuItem(
                          value: value,
                          child: MyTextRegular(
                            size: 12,
                            warna: Colors.black87,
                            teks: value,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTipeKedatangan() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Tipe Kedatangan',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: Flexible(
              child: GFDropdown(
                isExpanded: true,
                padding: const EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(5),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.white,
                value: _tipeKedatangan,
                onChanged: (newValue) {
                  setState(() {
                    _tipeKedatangan = newValue.toString();
                  });
                },
                items: [
                  'Ambulans',
                  'KLINIK',
                  'Sendiri',
                  'Kendaraan Umum',
                  'Lain-lain'
                ]
                    .map((value) => DropdownMenuItem(
                          value: value,
                          child: MyTextRegular(
                            size: 12,
                            warna: Colors.black87,
                            teks: value,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildKecelakaan() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Kecelakaan',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _kecelakaan,
              onChanged: (newValue) {
                setState(() {
                  _kecelakaan = newValue.toString();
                });
              },
              items: [
                'Ya',
                'Tidak',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildKondisiKedatangan() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Kondisi Kedatangan',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _kondisiKedatangan,
              onChanged: (newValue) {
                setState(() {
                  _kondisiKedatangan = newValue.toString();
                });
              },
              items: [
                'Sadar',
                'Rangsangan Verbal',
                'Rangsangan Nyeri',
                'Tidak Sadar',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDiantarOleh() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Diantar Oleh',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _diantar,
              onChanged: (newValue) {
                setState(() {
                  _diantar = newValue.toString();
                });
              },
              items: [
                'Keluarga',
                'KLINIK',
                'Datang Sendiri',
                'Lain-lain',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInformasiDiperoleh() {
    return Container(
      //color: Colors.white70,
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextRegular(
            size: 12,
            teks: 'Informasi Diperoleh Dari',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _informasiDiperoleh,
              onChanged: (newValue) {
                setState(() {
                  _informasiDiperoleh = newValue.toString();
                });
              },
              items: [
                'Pasien',
                'Keluarga',
                'Orang Lain',
              ]
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: MyTextRegular(
                          size: 12,
                          warna: Colors.black87,
                          teks: value,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
