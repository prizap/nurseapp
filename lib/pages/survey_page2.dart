import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurse_application_1/const/xcolors.dart';
import 'package:nurse_application_1/helper/function_helper.dart';
import 'package:nurse_application_1/pages/result_page.dart';
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
  var _hasilLab;
  var _hepatojuglar;
  var _circulationmMmbranMurkosa;
  var _circulationTurgorKulit;
  var _urineTrend;
  var _circulationJVP;
  var _circulationCVP;
  // Step Breating
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
  // Step Circulation
  bool _circulationNadiNormal = false;
  bool _circulationNadiTakikardi = false;
  bool _circulationNadiBradikardi = false;
  bool _circulationNadiPalpitasi = false;
  bool _circulationKualitasRegular = false;
  bool _circulationKualitasIrregular = false;
  bool _circulationKualitasKuat = false;
  bool _circulationKualitasLemah = false;
  bool _circulationEdemaAnarsaka = false;
  bool _circulationEdemaPerifer = false;
  bool _circulationEdemaLainLain = false;
  bool _circulationdisetensiVenajugularis = false;
  bool _circulationKelelahan = false;
  bool _circulationCRTlebihdari2 = false;
  bool _circulationKulitNormal = false;
  bool _circulationKulitLembab = false;
  bool _circulationKulitJaundice = false;
  bool _circulationKulitKeringHangat = false;
  bool _circulationKulitPanas = false;
  bool _circulationKulitDingin = false;
  bool _circulationKulitPucat = false;
  bool _ciculationTesRumpleLeed = false;
  bool _circulationKulitSianosis = false;
  // Step Disabilitas
  bool _disabilitasAlert = false;
  bool _disabilitasVerbal = false;
  bool _disabilitasPainful = false;
  bool _disabilitasUnresponsive = false;
  // Step Nyeri
  bool _nyeriAda = false;
  bool _nyeriMeringis = false;
  bool _nyeriBersikapProtekti = false;
  bool _nyeriGelisah = false;
  bool _nyeriSulitTidur = false;
  bool _nyeriKualitasTajam = false;
  bool _nyeriKualitasTumpul = false;
  bool _nyeriKualitasKram = false;
  bool _nyeriKualitasTerbakar = false;
  bool _nyeriKualitasTertekan = false;
  bool _nyeriKualitasDiremas = false;
  bool _nyeriKualitasTertusuk = false;
  bool _nyeriKualitasKolik = false;
  bool _nyeriKualitasHilangTimbul = false;
  bool _nyeriKualitasMenetap = false;
  bool _nyeriWaktuPelan = false;
  bool _nyeriWaktuTibaTiba = false;
  bool _nyeriWaktuPernahNyeri = false;
  bool _nyeriWaktuLama = false;
  bool _nyeriWaktuSingakt = false;
  // Step EKG
  bool _gambaranEKGNormal = false;
  bool _gambaranEKGAritma = false;
  bool _gambaranEKGgangguanKonduksi = false;

  String errorMassage = "Mohon cek variable berikut ";
  double _skalaNyeri = 0;
  // step data pasien
  var ctrlNoReg = TextEditingController();
  var ctrltglMRS = TextEditingController();
  var ctrlnama = TextEditingController();
  var ctrlTglLahir = TextEditingController();
  var ctrlUsia = TextEditingController();
  var ctrlAlamat = TextEditingController();
  var ctrlAgama = TextEditingController();
  var ctrlPembayran = TextEditingController();
  var ctrlWaktuKedatangn = TextEditingController();
  var ctrlWaktuDiperiksa = TextEditingController();
  var ctrlTempatKejadian = TextEditingController();
  var ctrlMekanisme = TextEditingController();
  // Step Primari Survey
  var ctrlTD1 = TextEditingController();
  var ctrlTD2 = TextEditingController();
  var ctrlHR = TextEditingController();
  var ctrlRepositoryRate = TextEditingController();
  var ctrlSaO2 = TextEditingController();
  var ctrlTemperature = TextEditingController();
  // Step Airway
  var ctrlMasalahKeperawatan = TextEditingController();
  var ctrlTindakan = TextEditingController();
  // Step Breating
  var ctrlJelasKanan = TextEditingController();
  var ctrlJelasKiri = TextEditingController();
  var ctrlRochiKanan = TextEditingController();
  var ctrlRochiKiri = TextEditingController();
  var ctrlWheezeKanan = TextEditingController();
  var ctrlWheezeKiri = TextEditingController();
  var ctrlCreckelsKanan = TextEditingController();
  var ctrlCreckelsKiri = TextEditingController();
  var ctrlAbsenKanan = TextEditingController();
  var ctrlAbsenKiri = TextEditingController();
  var ctrlBreatingMasalahKeperawatan = TextEditingController();
  var ctrlBreatingTindakan = TextEditingController();
  // Circulation
  var ctrlNadi = TextEditingController();
  var ctrlKehilanganCairan = TextEditingController();
  var ctrlurineSejamPertama = TextEditingController();
  var ctrlurineSejamKedua = TextEditingController();
  var ctrlurineSejamKetiga = TextEditingController();
  var ctrlMasalahKeperawatanCirculation = TextEditingController();
  var ctrlTindakanCirculation = TextEditingController();
  //Step Disabilitas
  var ctrlLainLainDisabilitas = TextEditingController();
  //Step Nyeri
  var ctrlLainLainNyeri = TextEditingController();
  var ctrlNyeriPemulihan = TextEditingController();
  var ctrlSliderNyeri = TextEditingController();

  //Step Lab
  var ctrlHematokrit = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ctrlNoReg.dispose();
    ctrltglMRS.dispose();
    ctrlnama.dispose();
    ctrlTglLahir.dispose();
    ctrlUsia.dispose();
    ctrlAlamat.dispose();
    ctrlAgama.dispose();
    ctrlPembayran.dispose();
    ctrlWaktuKedatangn.dispose();
    ctrlWaktuDiperiksa.dispose();
    ctrlTempatKejadian.dispose();
    ctrlMekanisme.dispose();
    // Step Primari Survey
    ctrlTD1.dispose();
    ctrlTD2.dispose();
    ctrlHR.dispose();
    ctrlRepositoryRate.dispose();
    ctrlSaO2.dispose();
    ctrlTemperature.dispose();
    // Step Airway
    ctrlMasalahKeperawatan.dispose();
    ctrlTindakan.dispose();
    // Step Breating
    ctrlJelasKanan.dispose();
    ctrlJelasKiri.dispose();
    ctrlRochiKanan.dispose();
    ctrlRochiKiri.dispose();
    ctrlWheezeKanan.dispose();
    ctrlWheezeKiri.dispose();
    ctrlCreckelsKanan.dispose();
    ctrlCreckelsKiri.dispose();
    ctrlAbsenKanan.dispose();
    ctrlAbsenKiri.dispose();
    ctrlBreatingMasalahKeperawatan.dispose();
    ctrlBreatingTindakan.dispose();
    // Circulation
    ctrlNadi.dispose();
    ctrlKehilanganCairan.dispose();
    ctrlurineSejamPertama.dispose();
    ctrlurineSejamKedua.dispose();
    ctrlurineSejamKetiga.dispose();
    ctrlMasalahKeperawatanCirculation.dispose();
    ctrlTindakanCirculation.dispose();
    //Step Disabilitas
    ctrlLainLainDisabilitas.dispose();
    //Step Nyeri
    ctrlLainLainNyeri.dispose();
    ctrlNyeriPemulihan.dispose();
    ctrlSliderNyeri.dispose();

    //Step Lab
    ctrlHematokrit.dispose();
    super.dispose();
  }

  bool checkVar() {
    //data pasien
    if (ctrlNoReg.text == "" || ctrlNoReg.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien nomor registrasi";
      return false;
    }
    if (ctrltglMRS.text == "" || ctrltglMRS.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Tanggal masuk rumah sakit";
      return false;
    }
    if (ctrlnama.text == "" || ctrlnama.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien nama";
      return false;
    }
    if (ctrlTglLahir.text == "" || ctrlTglLahir.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Tanggal Lahir";
      return false;
    }
    if (ctrlUsia.text == "" || ctrlUsia.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Usia";
      return false;
    }
    if (ctrlAlamat.text == "" || ctrlAlamat.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Alamat";
      return false;
    }
    if (ctrlAgama.text == "" || ctrlAgama.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Agama";
      return false;
    }
    if (ctrlPembayran.text == "" || ctrlPembayran.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Pembayaran";
      return false;
    }
    if (ctrlWaktuKedatangn.text == "" || ctrlWaktuKedatangn.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Waktu Kedatangan";
      return false;
    }
    if (_tipeKedatangan == null || _tipeKedatangan == "") {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Tipe Kedatangan";
      return false;
    }
    if (_kecelakaan == null || _kecelakaan == "") {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Tipe Kecelakaan";
      return false;
    }
    if (ctrlWaktuDiperiksa.text == "" || ctrlWaktuDiperiksa.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Waktu Diperiksa";
      return false;
    }
    if (ctrlTempatKejadian.text == "" || ctrlTempatKejadian.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Waktu Tempat Kejadian";
      return false;
    }
    if (ctrlMekanisme.text == "" || ctrlMekanisme.text.isEmpty) {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Mekanisme";
      return false;
    }
    if (_kondisiKedatangan == null || _kondisiKedatangan == "") {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Tipe Kondisi Kedatangan";
      return false;
    }
    if (_diantar == null || _diantar == "") {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Tipe Kondisi Di antar";
      return false;
    }
    if (_informasiDiperoleh == null || _informasiDiperoleh == "") {
      errorMassage = "";
      errorMassage += "Kolom Data Pasien Informasi Diperoleh";
      return false;
    }
    if (_kategoriTriase == null || _kategoriTriase == "") {
      errorMassage = "";
      errorMassage += "Dropdown Primary Survey Kategori Triase";
      return false;
    }
    if (_beratSekarang == null || _beratSekarang == "") {
      errorMassage = "";
      errorMassage += "Dropdown Primary Survey Berat Badan Mohon Diisi";
      return false;
    }
    if (_td1 == null || _td1 == "") {
      errorMassage = "";
      errorMassage += "Dropdown Primary Survey TD1  mohon diisi";
      return false;
    }
    if (_td2 == null || _td2 == "") {
      errorMassage = "";
      errorMassage += "Dropdown Primary Survey TD2  mohon diisi";
      return false;
    }
    if (_temperature1 == null || _temperature1 == "") {
      errorMassage = "";
      errorMassage += "Dropdown Primary Survey Temperature";
      return false;
    }
    if (_temperature2 == null || _temperature2 == "") {
      errorMassage = "";
      errorMassage += "Dropdown Primary Survey Temperature  mohon diisi";
      return false;
    }
    if (_statusMental == null || _statusMental == "") {
      errorMassage = "";
      errorMassage += "Dropdown Primary Survey Status Mental  mohon diisi";
      return false;
    }
    if (_airway == null || _airway == "") {
      errorMassage = "";
      errorMassage += "Dropdown Airway  mohon diisi";
      return false;
    }
    if (_frekuensiNadi == null || _frekuensiNadi == "") {
      errorMassage = "";
      errorMassage += "Dropdown Circulation Frekuensi Nadi  mohon diisi";
      return false;
    }
    if (_hasilLab == null || _hasilLab == "") {
      errorMassage = "";
      errorMassage += "Dropdown Hasil Lab  mohon diisi";
      return false;
    }
    if (_hepatojuglar == null || _hepatojuglar == "") {
      errorMassage = "";
      errorMassage += "Dropdown Circulation Hepato Juglar  mohon diisi";
      return false;
    }
    if (_circulationmMmbranMurkosa == null ||
        _circulationmMmbranMurkosa == "") {
      errorMassage = "";
      errorMassage += "Dropdown Circulation Membran Murkosa  mohon diisi";
      return false;
    }
    if (_circulationTurgorKulit == null || _circulationTurgorKulit == "") {
      errorMassage = "";
      errorMassage += "Dropdown Circulation Turgor Kulit  mohon diisi";
      return false;
    }
    if (_urineTrend == null || _urineTrend == "") {
      errorMassage = "";
      errorMassage += "Dropdown Circulation Urine Trend  mohon diisi";
      return false;
    }
    if (_circulationJVP == null || _circulationJVP == "") {
      errorMassage = "";
      errorMassage += "Dropdown Circulation JVP mohon diisi";
      return false;
    }
    if (_circulationCVP == null || _circulationCVP == "") {
      errorMassage = "";
      errorMassage += "Dropdown Circulation CVP mohon diisi";
      return false;
    }

    return true;
  }

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

  List<Penyakit> penyakitGet() {
    return [
      HipovolemiaD22(
          bbSekarang: _beratSekarang,
          pnd: _breathingParoxysmal,
          edemaAnarsaka: _circulationEdemaAnarsaka,
          edemaPerifer: _circulationEdemaPerifer,
          hepatojugular: _hepatojuglar,
          jvpMeningkat: _circulationJVP,
          ortopnea: _breathingOrtopnea),
      HipovolemiaD23(
          circulationNadi: _circulationNadiTakikardi,
          circulationKualitasLemah: _circulationKualitasLemah,
          turun: _td1,
          menyempit: _td2,
          nadiTakikardi: _circulationNadiTakikardi,
          circulationMembranMurkosa: _circulationmMmbranMurkosa,
          circulationMenurun: _circulationTurgorKulit,
          hematokrit: ctrlHematokrit.text),
      HipertemiaD130(temperatureTinggi: _temperature1),
      PenurunanCurahJantung1(
          gambaranEKGArtimia: _gambaranEKGAritma,
          gambaranEKGGanguanKodenksi: _gambaranEKGgangguanKonduksi),
      PenurunanCurahJantung2(
          cvpMeningkat: _circulationCVP,
          edemaLainLain: _circulationEdemaLainLain,
          disetensiVenajugularis: _circulationdisetensiVenajugularis,
          kelelahan: _circulationKelelahan),
      PenurunanCurahJantung3(
          kualitasLemah: _circulationKualitasLemah,
          crt: _circulationCRTlebihdari2,
          kulitPucat: _circulationKulitPucat,
          urineTrend: _urineTrend,
          dispena: _breathingDispnea),
      BersihanJalanNafasTidakEfektifD001(
          tidakmampubatuk: _breathingBatukTidakEfektif,
          penumpukanSputum: _breathingSputum),
      PolaNafasTidakEfektifD0005(
          dispnea: _breathingDispnea,
          frekuensiEkspirasimemanjang: _breathingFrekuensiEkspirasi,
          jelasBersih: _breathingSuaraNafasJelas,
          penggunaanOtotbantuNafas: _breathingOtotBantuNafas,
          polanafasAbnormalmisTakipnea: _breathingNafasAbnormalTakipnea,
          polanafasAbnormalmisBradipnea: _breathingNafasAbnormalBradipnea,
          polanafasAbnormalmishiperventilasi:
              _breathingNafasAbnormalHiperventilasiKussmaul,
          ronchi: _breathingSuaraNafasRonchi,
          wheeze: _breathingSuaraNafasWheeze),
      NyeriAkut0007(
          frekuensiNadimeningkat: _frekuensiNadi,
          nyeriAda: _nyeriAda,
          nyeriAdaBersikapProtektif: _nyeriBersikapProtekti,
          nyeriAdaGelisah: _nyeriGelisah,
          nyeriAdaTampakMeringis: _nyeriMeringis,
          nyeriSulitTidur: _nyeriSulitTidur),
      PerfusiperifertidakefektifD0009(
          crtlebihduadetik: _circulationCRTlebihdari2,
          dingin: _circulationKulitDingin,
          kualitaslemah: _circulationKualitasLemah,
          pucat: _circulationKulitPucat,
          turgorkulitmenurun: _circulationTurgorKulit),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          if (checkVar()) {
            setState(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            penyakit: penyakitGet(),
                            name: ctrlnama.text,
                            alamat: ctrlAlamat.text,
                            nomorreg: ctrlNoReg.text,
                            umur: ctrlUsia.text,
                          )),
                );
              },
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: MyTextRegular(
                  teks: errorMassage,
                  size: 15,
                  warna: Colors.yellowAccent,
                ),
              ),
            );
          }
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
                  if (checkVar()) {
                    setState(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                    penyakit: penyakitGet(),
                                    name: ctrlnama.text,
                                    alamat: ctrlAlamat.text,
                                    nomorreg: ctrlNoReg.text,
                                    umur: ctrlUsia.text,
                                  )),
                        );
                      },
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: MyTextRegular(
                          teks: errorMassage,
                          size: 15,
                          warna: Colors.yellowAccent,
                        ),
                      ),
                    );
                  }
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
      buildGambaranEKG(),
      buildHasilLab(),
    ];
  }

  Step buildHasilLab() {
    return Step(
        state: currentStep > 7 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 7,
        title: const Text("Hasil labolatorium"),
        subtitle: MyTextRegular(
          size: 10,
          warna: Colors.black54,
          teks: 'Isian Hasil Lab Pasien',
        ),
        content: Column(children: [
          MyTextSemiBold(size: 12, teks: 'Hematokrit'),
          textFld(
              ctrl: ctrlHematokrit,
              txt: 'Hematokrit',
              onChanged: (value) {
                ctrlHematokrit.text = value;
              }),
          buildHasilLabBox(),
        ]));
  }

  Widget buildHasilLabBox() {
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
            teks: 'Hasil Labolatorium',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _hasilLab,
              onChanged: (newValue) {
                setState(() {
                  _hasilLab = newValue.toString();
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
        ],
      ),
    );
  }

  Step buildGambaranEKG() {
    return Step(
        state: currentStep > 7 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 7,
        title: const Text("Gambaran EKG"),
        subtitle: MyTextRegular(
          size: 10,
          warna: Colors.black54,
          teks: 'Isian Gambaran EKG Pasien',
        ),
        content: Column(children: [
          buildGambaranEKGBox(),
        ]));
  }

  GFCard buildGambaranEKGBox() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Kualitas',
            warna: Colors.black87,
          ),
          checkboxCard(
              text: 'Normal',
              choice: _gambaranEKGNormal,
              onChanged: (value) {
                setState(
                  () {
                    _gambaranEKGNormal = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Aritma',
              choice: _gambaranEKGAritma,
              onChanged: (value) {
                setState(
                  () {
                    _gambaranEKGAritma = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Gangguan konduksi',
              choice: _gambaranEKGgangguanKonduksi,
              onChanged: (value) {
                setState(
                  () {
                    _gambaranEKGgangguanKonduksi = value;
                  },
                );
              }),
        ],
      ),
    );
  }

  Step buildNyeri() {
    return Step(
      state: currentStep > 6 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 6,
      title: const Text("Nyeri"),
      subtitle: MyTextRegular(
        size: 10,
        warna: Colors.black54,
        teks: 'Isian Nyeri yang dirasakan Pasien',
      ),
      content: Column(
        children: [
          nyeriAdaTidak(),
          textFld(
              ctrl: ctrlNyeriPemulihan,
              txt: 'Penyebab/pemulihan',
              onChanged: (value) {
                ctrlNyeriPemulihan.text = value;
              }),
          buildSlidderNyeri(),
          textFld(
              ctrl: ctrlSliderNyeri,
              txt: 'Menyebar Ke',
              onChanged: (value) {
                ctrlSliderNyeri.text = value;
              }),
          buildNyeriKualitas(),
          buildNyeriWaktu(),
          textFld(
              ctrl: ctrlLainLainNyeri,
              txt: 'Lain-Lain',
              onChanged: (value) {
                ctrlLainLainNyeri.text = value;
              }),
        ],
      ),
    );
  }

  GFCard buildNyeriKualitas() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Kualitas',
            warna: Colors.black87,
          ),
          checkboxCard(
              text: 'Tajam',
              choice: _nyeriKualitasTajam,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasTajam = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Tumpul',
              choice: _nyeriKualitasTumpul,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasTumpul = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Kram',
              choice: _nyeriKualitasKram,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasKram = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Terbakar',
              choice: _nyeriKualitasTerbakar,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasTerbakar = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Tertekan',
              choice: _nyeriKualitasTertekan,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasTertekan = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Diremas',
              choice: _nyeriKualitasDiremas,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasDiremas = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Tertusuk',
              choice: _nyeriKualitasTertusuk,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasTertusuk = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Kolik',
              choice: _nyeriKualitasKolik,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasKolik = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Hilang timbul',
              choice: _nyeriKualitasHilangTimbul,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasHilangTimbul = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Menetap',
              choice: _nyeriKualitasMenetap,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriKualitasMenetap = value;
                  },
                );
              }),
        ],
      ),
    );
  }

  GFCard buildNyeriWaktu() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Waktu nyeri ',
            warna: Colors.black87,
          ),
          checkboxCard(
              text: 'Pelan',
              choice: _nyeriWaktuPelan,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriWaktuPelan = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Tiba-tiba',
              choice: _nyeriWaktuTibaTiba,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriWaktuTibaTiba = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Pernah nyeri perti ini',
              choice: _nyeriWaktuPernahNyeri,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriWaktuPernahNyeri = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Lama',
              choice: _nyeriWaktuLama,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriWaktuLama = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Singkat',
              choice: _nyeriWaktuSingakt,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriWaktuSingakt = value;
                  },
                );
              }),
        ],
      ),
    );
  }

  GFCard nyeriAdaTidak() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Nyeri',
            warna: Colors.black87,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: MyTextRegular(
                  size: 12,
                  warna: Colors.black87,
                  teks: 'Ada/Tidak',
                ),
              ),
              Flexible(
                child: GFCheckbox(
                  size: GFSize.SMALL,
                  type: GFCheckboxType.square,
                  activeBgColor: MyColor.hijau2,
                  //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
                  onChanged: (value) {
                    setState(() {
                      _nyeriAda = value;
                      print('value breathing _breathingOrtopnea $_nyeriAda');
                    });
                  },
                  value: _nyeriAda,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          checkboxCard(
              text: 'Tampak Meringis',
              choice: _nyeriMeringis,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriMeringis = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Bersikap protektif',
              choice: _nyeriBersikapProtekti,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriBersikapProtekti = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Gelisah',
              choice: _nyeriGelisah,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriGelisah = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Sulit Tidur',
              choice: _nyeriSulitTidur,
              onChanged: (value) {
                setState(
                  () {
                    _nyeriSulitTidur = value;
                  },
                );
              }),
        ],
      ),
    );
  }

  GFCard buildSlidderNyeri() {
    return GFCard(
        content: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        MyTextRegular(
          size: 15,
          teks: 'Skala Nyeri',
          warna: Colors.black87,
        ),
        SliderTheme(
          data: const SliderThemeData(
              showValueIndicator: ShowValueIndicator.onlyForContinuous),
          child: Slider(
              value: _skalaNyeri,
              onChanged: (value) {
                setState(() => _skalaNyeri = value);
              },
              min: 0,
              max: 10,
              label: _skalaNyeri.round().toString()),
        )
      ],
    ));
  }

  Step buildDisabilities() {
    return Step(
      state: currentStep > 5 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 5,
      title: const Text("Disabilities"),
      subtitle: MyTextRegular(
        size: 10,
        warna: Colors.black54,
        teks: 'Isian Disabilitas Pasien',
      ),
      content: Column(
        children: [
          buildDisabilitasBox(),
        ],
      ),
    );
  }

  GFCard buildDisabilitasBox() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Disabilitas',
            warna: Colors.black87,
          ),
          checkboxCard(
              text: 'Alert',
              choice: _disabilitasAlert,
              onChanged: (value) {
                setState(
                  () {
                    _disabilitasAlert = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Verbal',
              choice: _disabilitasVerbal,
              onChanged: (value) {
                setState(
                  () {
                    _disabilitasVerbal = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Painful',
              choice: _disabilitasPainful,
              onChanged: (value) {
                setState(
                  () {
                    _disabilitasPainful = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Unresponsive',
              choice: _disabilitasUnresponsive,
              onChanged: (value) {
                setState(
                  () {
                    _disabilitasUnresponsive = value;
                  },
                );
              }),
          textFld(
              ctrl: ctrlLainLainDisabilitas,
              txt: 'Lain-Lain',
              onChanged: (value) {
                ctrlLainLainDisabilitas.text = value;
              }),
        ],
      ),
    );
  }

  Step buildCirculation() {
    return Step(
      state: currentStep > 4 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 4,
      title: const Text("Circulation"),
      subtitle: MyTextRegular(
        size: 10,
        warna: Colors.black54,
        teks: 'Isian Circulation Pasien',
      ),
      content: Column(
        children: [
          // GFCard(
          //   content: Column(
          //     children: [
          circulationKualitasText(text: 'Kualitas'),
          textFld(
              ctrl: ctrlNadi,
              txt: 'Nadi (x/Menit)',
              onChanged: (value) {
                ctrlNadi.text = value;
              }),
          buildFrekuensiNadi(),
          circulationNadiNormal(),
          circulationNadiTakikardi(),
          circulationNadiBradikardi(),
          circulationNadiPalpitasi(),
          circulationKulitas(),
          circulationCRT(),
          circulationKulit(),
          circulationTestRumpleLeed(),
          circulationMembranMurkosa(),
          circulationTurogorkulit(),
          textFld(
              ctrl: ctrlKehilanganCairan,
              txt: 'Perkiraan kehilangan cairan ml',
              onChanged: (value) {
                ctrlKehilanganCairan.text = value;
              }),
          circulationEdema(),
          circulationOutputUrine(),
          circulationJVP(),
          circulationCVP(),
          circulationReflekshepatojugular(),
          circulationDistensivenajugularis(),
          circulationKelelahan(),

          //MyCheckBox(onChanged: _handleCheckBox, label: 'Normal')
          //myCheckBox(teks: 'Normal', xvalue: _circulationNadiNormal, ),
        ],
      ),
      //     ),
      //   ],
      // ),
    );
  }

  GFCard circulationKelelahan() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Kelelahan',
            warna: Colors.black87,
          ),
          checkboxCard(
              text: 'Positive',
              choice: _circulationKelelahan,
              onChanged: (value) {
                setState(
                  () {
                    _circulationKelelahan = value;
                  },
                );
              }),
        ],
      ),
    );
  }

  GFCard circulationDistensivenajugularis() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Distensi vena jugularis ',
            warna: Colors.black87,
          ),
          checkboxCard(
              text: 'Positive',
              choice: _circulationdisetensiVenajugularis,
              onChanged: (value) {
                setState(
                  () {
                    _circulationdisetensiVenajugularis = value;
                  },
                );
              }),
        ],
      ),
    );
  }

  Widget circulationReflekshepatojugular() {
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
            teks: 'Refleks hepatojugular',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _hepatojuglar,
              onChanged: (newValue) {
                setState(() {
                  _hepatojuglar = newValue.toString();
                });
              },
              items: [
                'Positive',
                'Normal',
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

  GFCard circulationCVP() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Cental Venous Pressure',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _circulationCVP,
              onChanged: (newValue) {
                setState(() {
                  _circulationCVP = newValue.toString();
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
          )
        ],
      ),
    );
  }

  GFCard circulationJVP() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Jugular Venous Pressure ',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _circulationJVP,
              onChanged: (newValue) {
                setState(() {
                  _circulationJVP = newValue.toString();
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
        ],
      ),
    );
  }

  GFCard circulationOutputUrine() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Output urine',
            warna: Colors.black87,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textFld(
                ctrl: ctrlurineSejamPertama,
                txt: 'Satu jam pertama...ml',
                onChanged: (value) {
                  ctrlurineSejamPertama.text = value;
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textFld(
                ctrl: ctrlurineSejamKedua,
                txt: 'Satu jam kedua...ml',
                onChanged: (value) {
                  ctrlurineSejamKedua.text = value;
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textFld(
                ctrl: ctrlurineSejamKetiga,
                txt: 'Satu jam ketiga...ml',
                onChanged: (value) {
                  ctrlurineSejamKetiga.text = value;
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonHideUnderline(
              child: GFDropdown(
                isExpanded: true,
                padding: const EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(5),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.white,
                value: _urineTrend,
                onChanged: (newValue) {
                  setState(() {
                    _urineTrend = newValue.toString();
                  });
                },
                items: [
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textFld(
                ctrl: ctrlMasalahKeperawatan,
                txt: 'Masalah keperawatan',
                onChanged: (value) {
                  ctrlMasalahKeperawatan.text = value;
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textFld(
                ctrl: ctrlTindakanCirculation,
                txt: 'Tindakan',
                onChanged: (value) {
                  ctrlTindakanCirculation.text = value;
                }),
          ),
        ],
      ),
    );
  }

  GFCard circulationEdema() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Kulit',
            warna: Colors.black87,
          ),
          checkboxCard(
              text: 'Edema Anarsaka',
              choice: _circulationEdemaAnarsaka,
              onChanged: (value) {
                setState(
                  () {
                    _circulationEdemaAnarsaka = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Edema perifer',
              choice: _circulationEdemaPerifer,
              onChanged: (value) {
                setState(
                  () {
                    _circulationEdemaPerifer = value;
                  },
                );
              }),
          checkboxCard(
              text: 'Edema lain-lain',
              choice: _circulationEdemaLainLain,
              onChanged: (value) {
                setState(
                  () {
                    _circulationEdemaLainLain = value;
                  },
                );
              }),
        ],
      ),
    );
  }

  Widget circulationTurogorkulit() {
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
            teks: 'Turogor Kulit',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _circulationTurgorKulit,
              onChanged: (newValue) {
                setState(() {
                  _circulationTurgorKulit = newValue.toString();
                });
              },
              items: [
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
        ],
      ),
    );
  }

  Widget circulationMembranMurkosa() {
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
            teks: 'Membran Murkosa',
            warna: Colors.black87,
          ),
          DropdownButtonHideUnderline(
            child: GFDropdown(
              isExpanded: true,
              padding: const EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(5),
              border: const BorderSide(color: Colors.black12, width: 1),
              dropdownButtonColor: Colors.white,
              value: _circulationmMmbranMurkosa,
              onChanged: (newValue) {
                setState(() {
                  _circulationmMmbranMurkosa = newValue.toString();
                });
              },
              items: [
                'Kering',
                'Lembab',
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

  GFCard circulationTestRumpleLeed() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Test Rumple Leed',
            warna: Colors.black87,
          ),
          checkboxCard(
            text: 'Positive/Negative',
            choice: _ciculationTesRumpleLeed,
            onChanged: (value) {
              setState(
                () {
                  _ciculationTesRumpleLeed = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }

  GFCard circulationKulit() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'Kulit',
            warna: Colors.black87,
          ),
          checkboxCard(
            text: 'Normal',
            choice: _circulationKulitNormal,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitNormal = value;
                },
              );
            },
          ),
          checkboxCard(
            text: 'Lembab',
            choice: _circulationKulitLembab,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitLembab = value;
                },
              );
            },
          ),
          checkboxCard(
            text: 'Jaundice',
            choice: _circulationKulitJaundice,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitJaundice = value;
                },
              );
            },
          ),
          checkboxCard(
            text: 'Kering/hangat',
            choice: _circulationKulitKeringHangat,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitKeringHangat = value;
                },
              );
            },
          ),
          checkboxCard(
            text: 'Panas',
            choice: _circulationKulitPanas,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitPanas = value;
                },
              );
            },
          ),
          checkboxCard(
            text: 'Dingin',
            choice: _circulationKulitDingin,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitDingin = value;
                },
              );
            },
          ),
          checkboxCard(
            text: 'Pucat',
            choice: _circulationKulitPucat,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitPucat = value;
                },
              );
            },
          ),
          checkboxCard(
            text: 'Sianosis',
            choice: _circulationKulitSianosis,
            onChanged: (value) {
              setState(
                () {
                  _circulationKulitSianosis = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }

  GFCard circulationCRT() {
    return GFCard(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      content: Column(
        children: [
          MyTextSemiBold(
            size: 15,
            teks: 'CRT',
            warna: Colors.black87,
          ),
          checkboxCard(
            text: 'Lebih dari 2 detik',
            choice: _circulationCRTlebihdari2,
            onChanged: (value) {
              setState(
                () {
                  _circulationCRTlebihdari2 = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }

  GFCard circulationKulitas() {
    return GFCard(
        margin: const EdgeInsets.all(1),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        content: Column(
          children: [
            MyTextSemiBold(
              size: 15,
              teks: 'Kualitas',
              warna: Colors.black87,
            ),
            checkboxCard(
              text: 'Regular',
              choice: _circulationKualitasRegular,
              onChanged: (value) {
                setState(
                  () {
                    _circulationKualitasRegular = value;
                  },
                );
              },
            ),
            checkboxCard(
              text: 'Irregular',
              choice: _circulationKualitasIrregular,
              onChanged: (value) {
                setState(
                  () {
                    _circulationKualitasIrregular = value;
                  },
                );
              },
            ),
            checkboxCard(
              text: 'kuat',
              choice: _circulationKualitasKuat,
              onChanged: (value) {
                setState(
                  () {
                    _circulationKualitasKuat = value;
                  },
                );
              },
            ),
            checkboxCard(
              text: 'Lemah',
              choice: _circulationKualitasLemah,
              onChanged: (value) {
                setState(
                  () {
                    _circulationKualitasLemah = value;
                  },
                );
              },
            ),
          ],
        ));
  }

  Widget checkboxCard(
      {required String text,
      required bool choice,
      required ValueChanged<bool>? onChanged}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: MyTextRegular(
            size: 12,
            warna: Colors.black87,
            teks: text,
          ),
        ),
        Flexible(
          child: GFCheckbox(
            size: GFSize.SMALL,
            type: GFCheckboxType.square,
            activeBgColor: MyColor.hijau2,
            //activeIcon: const Icon(Icons.check, size: 10, color: GFColors.WHITE),,
            onChanged: onChanged,
            value: choice,
            inactiveIcon: null,
          ),
        )
      ],
    );
  }

  Widget circulationKualitasText({required String text}) {
    return Container(
      margin: const EdgeInsets.all(1),
      child: Column(
        children: [
          MyTextSemiBold(size: 12, teks: text),
        ],
      ),
    );
  }

  GFCard circulationKualitasKuat() {
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
                  teks: 'Kuat',
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
                      _circulationKualitasIrregular = value;
                      print(
                          'value breathing _circulationKualitasIrregular  $_circulationKualitasIrregular ');
                    });
                  },
                  value: _circulationKualitasIrregular,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  GFCard circulationKualitasIrregular() {
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
                  teks: 'Irregular',
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
                      _circulationKualitasIrregular = value;
                      print(
                          'value breathing _circulationKualitasIrregular  $_circulationKualitasIrregular ');
                    });
                  },
                  value: _circulationKualitasIrregular,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  GFCard circulationKualitasRegular() {
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
                  teks: 'Regular',
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
                      _circulationKualitasRegular = value;
                      print(
                          'value breathing _circulationKualitasRegular  $_circulationKualitasRegular ');
                    });
                  },
                  value: _circulationKualitasRegular,
                  inactiveIcon: null,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  GFCard circulationNadiPalpitasi() {
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
                  teks: 'Palpitasi',
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
                      _circulationNadiPalpitasi = value;
                      print(
                          'value breathing _circulationNadiPalpitasi  $_circulationNadiPalpitasi ');
                    });
                  },
                  value: _circulationNadiPalpitasi,
                  inactiveIcon: null,
                ),
              )
            ],
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
      subtitle: MyTextRegular(
        size: 10,
        warna: Colors.black54,
        teks: 'Isian Breathing Pasien',
      ),
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
        textFld(
            ctrl: ctrlBreatingMasalahKeperawatan,
            txt: 'Masalah Keperawatan',
            onChanged: (value) {
              ctrlBreatingMasalahKeperawatan.text = value;
            }),
        // Flexible(child: textFld(ctrl: ctrlNoReg, txt: 'Masalah Keperawatan')),
        const SizedBox(
          height: 5,
        ),
        textFld(
            ctrl: ctrlBreatingTindakan,
            txt: 'Tindakan',
            onChanged: (value) {
              ctrlBreatingTindakan.text = value;
            })
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
              Flexible(
                  child: textFld(
                ctrl: ctrlAbsenKanan,
                txt: 'Kanan',
                onChanged: (value) {
                  ctrlAbsenKanan.text = value;
                },
              )),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                  child: textFld(
                ctrl: ctrlAbsenKiri,
                txt: 'Kiri',
                onChanged: (value) {
                  ctrlAbsenKiri.text = value;
                },
              )),
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
              Flexible(
                  child: textFld(
                ctrl: ctrlCreckelsKanan,
                txt: 'Kanan',
                onChanged: (value) {
                  ctrlCreckelsKanan.text = value;
                },
              )),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                  child: textFld(
                ctrl: ctrlCreckelsKiri,
                txt: 'Kiri',
                onChanged: (value) {
                  ctrlCreckelsKiri.text = value;
                },
              )),
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
              Flexible(
                  child: textFld(
                ctrl: ctrlWheezeKanan,
                txt: 'Kanan',
                onChanged: (value) {
                  ctrlWheezeKanan.text = value;
                },
              )),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                  child: textFld(
                ctrl: ctrlWheezeKiri,
                txt: 'Kiri',
                onChanged: (value) {
                  ctrlWheezeKiri.text = value;
                },
              )),
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
              Flexible(
                  child: textFld(
                ctrl: ctrlRochiKanan,
                txt: 'Kanan',
                onChanged: (value) {
                  ctrlRochiKanan.text = value;
                },
              )),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                  child: textFld(
                ctrl: ctrlRochiKiri,
                txt: 'Kiri',
                onChanged: (value) {
                  ctrlRochiKiri.text = value;
                },
              )),
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
              Flexible(
                  child: textFld(
                ctrl: ctrlJelasKanan,
                txt: 'Kanan',
                onChanged: (value) {
                  ctrlJelasKanan.text = value;
                },
              )),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                  child: textFld(
                ctrl: ctrlJelasKiri,
                txt: 'Kiri',
                onChanged: (value) {
                  ctrlJelasKanan.text = value;
                },
              )),
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
      subtitle: MyTextRegular(
        size: 10,
        warna: Colors.black54,
        teks: 'Isian Airway',
      ),
      content: Column(
        children: [
          buildAirwayBox(),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlMasalahKeperawatan,
              txt: 'Masalah Keperawatan',
              onChanged: (value) {
                ctrlMasalahKeperawatan.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlTindakan,
              txt: 'Tindakan',
              onChanged: (value) {
                ctrlTindakan.text = value;
              }),
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
      subtitle: MyTextRegular(
        size: 10,
        warna: Colors.black54,
        teks: 'Isian Primary Surbey',
      ),
      content: Column(
        children: [
          buildTriase(),
          const SizedBox(
            height: 8,
          ),
          // textFld(ctrl: ctrlNoReg, txt: 'Tinggi Badan (cm)'),
          const SizedBox(
            height: 8,
          ),
          // textFld(ctrl: ctrlNoReg, txt: 'Berat Badan Sebelumnya (Kg)'),
          const SizedBox(
            height: 8,
          ),
          // textFld(ctrl: ctrlNoReg, txt: 'Berat Badan Sekarang (Kg)'),
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
              Flexible(
                  child: textFld(
                ctrl: ctrlTD1,
                txt: '',
                onChanged: (value) {
                  ctrlTD1.text = value;
                },
              )),
              MyTextRegular(
                size: 15,
                teks: ' / ',
                warna: Colors.black87,
              ),
              Flexible(
                  child: textFld(
                ctrl: ctrlTD2,
                txt: '',
                onChanged: (value) {
                  ctrlTD2.text = value;
                },
              )),
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
          textFld(
              ctrl: ctrlHR,
              txt: 'HR (x/menit)',
              onChanged: (value) {
                ctrlHR.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlRepositoryRate,
              txt: 'Resporatory Rate (x/menit)',
              onChanged: (value) {
                ctrlRepositoryRate.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlSaO2,
              txt: 'SaO2 (%)',
              onChanged: (value) {
                ctrlSaO2.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlTemperature,
              txt: 'Temperature (C)',
              onChanged: (value) {
                ctrlTemperature.text = value;
              }),
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
          textFld(
              ctrl: ctrlNoReg,
              txt: 'Nomor Registrasi',
              onChanged: (value) {
                ctrlNoReg.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrltglMRS,
              txt: 'Tanggal Masuk RS',
              onChanged: (value) {
                ctrltglMRS.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlnama,
              txt: 'Nama',
              onChanged: (value) {
                ctrlnama.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlTglLahir,
              txt: 'Tgl Lahir',
              onChanged: (value) {
                ctrlTglLahir.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlUsia,
              txt: 'Usia',
              kboadType: TextInputType.number,
              onChanged: (value) {
                ctrlUsia.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          buildRButtonKelamin(),
          textFld(
              ctrl: ctrlAlamat,
              txt: 'Alamat',
              onChanged: (value) {
                ctrlAlamat.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlAgama,
              txt: 'Agama',
              onChanged: (value) {
                ctrlAgama.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlPembayran,
              txt: 'Jenis Pembayaran',
              onChanged: (value) {
                ctrlPembayran.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlWaktuKedatangn,
              txt: 'Waktu Kedatangan',
              onChanged: (value) {
                ctrlWaktuKedatangn.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlWaktuDiperiksa,
              txt: 'Waktu Diperiksa',
              onChanged: (value) {
                ctrlWaktuDiperiksa.text = value;
              }),
          const SizedBox(
            height: 8,
          ),
          buildTipeKedatangan(),
          buildKecelakaan(),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlTempatKejadian,
              txt: 'Tempat dan Waktu Kejadian',
              onChanged: (value) {
                ctrlTempatKejadian.text = value;
              }),
          buildKondisiKedatangan(),
          buildDiantarOleh(),
          const SizedBox(
            height: 8,
          ),
          textFld(
              ctrl: ctrlMekanisme,
              txt: 'Mekanisme',
              onChanged: (value) {
                ctrlMekanisme.text = value;
              }),
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
