abstract class Penyakit {
  String get name;
  String get code;
  String get luaranYgDigunakan;
  List<Pencegahan> get pencegahan;
  bool getValue();
}

class HipovolemiaD22 extends Penyakit {
  HipovolemiaD22(
      {required this.bbSekarang,
      required this.pnd,
      required this.edemaAnarsaka,
      required this.edemaPerifer,
      required this.hepatojugular,
      required this.jvpMeningkat,
      required this.ortopnea});
  @override
  final String name = "Hipovomlia";
  @override
  final String code = "D.0022";
  @override
  final String luaranYgDigunakan = "Keseimbangan Cairan (L.03020)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Manajemen hipervolemia", code: "I.03114", observasi: [
      "Periksa tanda dan gejala hipervolemia (mis. Ortopnea, dispnea, edema, JVP/CVP meningkat, refleks hepatojugular positif, suara nafas tambahan)",
      "Identifikasi penyebab hipervolemia",
      "Monitor status hemodinamik (mis. Frekuensi jantung, tekanan darah, MAP, CVP, PAP, PCWP, CO, Cl), jika tersedia",
      "Monitor intake dan output cairan",
      "Monitor tanda hemokonsentrasi (mis. Kadar natrium, BUN, hematokrit, berat jenis urine)",
      "Monitor tanda peningkatan tekanan onkotik plasma (mis. Kadar protein dan albumin meningkat)",
      "Monitor kecepatan infus secara ketat",
      "Monitor efek samping deuretik (mis. Hipotensi ortortostatik,hipovolemia, hipokalemia, hiponatremia)",
    ], terapeutik: [
      "Timbang berat badan setiap hari pada waktu yang sama",
      "Batasi  asupan cairan dan garam",
      "Tinggikan kepala tempat tidur 30-40°",
    ], edukasi: [
      "Anjurkan melapor jika haluaran urine <0,5 mL/kg/jam dalam 6 jam",
      "Anjurkan melapor jika BB bertambah >1 kg dalam sehari",
      "Ajarkan cara mengukur dan mencatat asupan dan haluaran cairan",
      "Ajarkan cara membatasi cairan",
    ], kolaborasi: [
      "Kolaborasikan pemberian diuretik",
      "Kolaborasikan penggantian kehilangan kalium akibat diuretik",
      "Kolaborasikan pemberian continuous renalreplacement therapy (CRRT), jika perlu",
    ]),
    Pencegahan(nama: "Pemantauan cairan", code: "I.03121", observasi: [
      "Monitor frekuesi dan pemantauan nadi",
      "Monitor frekuensi nafas",
      "Monitor tekanan darah",
      "Monitor berat badan",
      "Monitor aktu pengisian kapiler",
      "Monitor elastisitas atau turgor kulit",
      "Monitor jumlah, warna, dan berat jenis urine",
      "Monitor kadar albumin dan protein total",
      "Monitor hasil pemeriksaan serum (mis. Osmolaritas serum, hematokrit, natrium, kalium, BUN)",
      "Monitor intake dan output cairan",
      "Identifikasi tanda-tanda hipovolemia (mis. Frekuensi nadi meningkat, nadi teraba lemah, tekanan darah menurun, tekanan nadi menyempit, turgoe kulit menurun,membran mukosa kering, volume urine menurun, hematokrit meningkat, haus, lemah, konsentrasi urine meningkat, berat badan menurun dalam waktu singkat)",
      "Identifikasi tanda-tanda hipervolemia (mis. Dispnea, edema, edema anasarka, JVP meningkat, CVP meningkat, refleks hepatojugular positif, berat badan bertambah dalam waktu yang singkat)",
      "Identifikasi faktor resiko ketidakseimbangan cairan (mis. Prosedur pembedahan mayor, trauma/pendarahan, luka bakar, aferesis, obstruksi intestinal, peradangan pangkreas, penyakit ginjal dan kellenjar, disfungsi intestinal)",
    ], terapeutik: [
      "Atus interval waktu pemantauan sesuai dengan kondisi pasien",
      "Dokumentasi hasil pemantauan",
    ], edukasi: [
      "Anjarkan teknik batuk efektif"
    ], kolaborasi: [
      "Jelaskan tujuan dan prosedur pemantauan",
      "Informasikan hasil pemantauan, jika perlu)",
    ]),
  ];
  String bbSekarang;
  String hepatojugular;
  String jvpMeningkat;
  bool pnd;
  bool ortopnea;
  bool edemaAnarsaka;
  bool edemaPerifer;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 7;

    if (bbSekarang == "Meningkat dalam waktu yang singkat") {
      value += 1;
    }
    if (hepatojugular == "Positive") {
      value += 1;
    }
    if (jvpMeningkat == "Meningkat") {
      value += 1;
    }
    if (pnd) {
      value += 1;
    }
    if (ortopnea) {
      value += 1;
    }
    if (edemaAnarsaka) {
      value += 1;
    }
    if (edemaPerifer) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    return treshold <= result;
  }
}

class HipovolemiaD23 extends Penyakit {
  HipovolemiaD23(
      {required this.circulationNadi,
      required this.circulationKualitasLemah,
      required this.turun,
      required this.menyempit,
      required this.nadiTakikardi,
      required this.circulationMembranMurkosa,
      required this.circulationMenurun,
      required this.hematokrit});
  @override
  final String name = "Hipovomlia";
  @override
  final String code = "D.0023";
  @override
  final String luaranYgDigunakan = "Status cairan (L.03028)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Manajemen Hipovolemia", code: "I.03116", observasi: [
      "Periksa tanda dan gejala hipovolemia (mis. Frekuensi nadi meningkat, Nadi teraba lemah, Tekanan darah menurun, Tekanan nadi menyempit, Turgor kulit menurun, Membran mukosa kering, Volume urine menurun, Hematokrit meningkat)",
      "Monitor intake dan output cairan",
    ], terapeutik: [
      "PHitung kebutuhan cairan",
      "Berikan posisi modified trendelenberg",
      "Berikan asupan cairan oral",
    ], edukasi: [
      "Anjurkan memperbanyak asupan cairan oral",
      "Anjurkan menghindari perubahan posisi mendadak",
    ], kolaborasi: [
      "Kolaborasikan perberian cairan IV isotonis (mis. NaCl, RL)",
      "Kolaborasikan perberian cairan IV hipotonis (mis. Glukosa 2,5%, NaCl 0,4%)",
      "Kolaborasikan pemberian cairan koloid (mis. Albumin, plasmanat)",
      "Kolaborasikan pemberian produk darah",
    ]),
    Pencegahan(nama: "Manajemen Syok Hipovolemik", code: "I.02050", observasi: [
      "Monitor status kardiopulmonal (frekuensi dan kekuatan nadi, frekuensi napas, TD, MAP)",
      "Monitor status oksigenasi (oksimetri nadi, AGD)",
      "Monitor status cairan (masukan dan haluaran, turgor kuli,  CRT)",
      "Periksa tingkat kesadaran dan respon pupil",
      "Periksa seluruh permukaan tubuh terhadap adanya DOTS (defomitiy/deformitas, open wound/luka terbuka, tenderness/nyeri tekan, swelling/bengkak)",
    ], terapeutik: [
      "Pertahankan jalan nafas paten",
      "Berikan oksigen untuk mempertahankan saturasi oksigen >94%",
      "Persiapkan intubasi dan ventilasi mekanis, jika perlu",
      "Lakukan penekanan langsung (direct pressure)pada pendarahan eksternal",
      "Berikan posisi syoke (modified trendelenberg)",
      "Pasang jalur IV berukuran beras (mis. Nomer 14 atau 16)",
      "Pasang kateter urine untuk menilai produksi urine",
      "Pasang selang nasogastrik untuk dekompresi lambung",
      "Ambil sempel darah untuk pemeriksaan darah lengkap dan elektrolit",
    ], edukasi: [], kolaborasi: [
      "Kolaborasikan pemberian infus cairan kristaioid 1-2 L pada dewasa",
      "Kolaborasikan pemberian infus cairan kristaioid  20mL/kgBB pada anak",
      "Kolaborasikan pemberian transfusi darah, jika perlu",
    ]),
  ];
  String turun;
  String menyempit;
  bool circulationNadi;
  bool nadiTakikardi;
  bool circulationKualitasLemah;
  String circulationMembranMurkosa;
  String circulationMenurun;
  String hematokrit;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 8;

    if (circulationMembranMurkosa == "Kering") {
      value += 1;
    }
    if (circulationMenurun == "Menurun") {
      value += 1;
    }
    if (circulationMenurun == "Meningkat") {
      value += 1;
    }
    if (turun == "Turun") {
      value += 1;
    }
    if (menyempit == "Menyempit") {
      value += 1;
    }
    if (circulationNadi) {
      value += 1;
    }
    if (nadiTakikardi) {
      value += 1;
    }
    if (circulationKualitasLemah) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    return treshold <= result;
  }
}

class HipertemiaD130 extends Penyakit {
  HipertemiaD130({required this.temperatureTingg});
  @override
  final String name = "Hipertermia";
  @override
  final String code = "D.0130";
  @override
  final String luaranYgDigunakan = "Termoregulasi (L.14134)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Manajemen Hipertermia", code: "I.15506", observasi: [
      "Identifikasi penyebab hipertermia (mis. Dehidrasi, terpapar lingkungan panas, penggunaan ingkubator)",
      "Monitor suhu tubuh",
      "Monitor kadar elektrolit",
      "Monitor haluaran urine",
      "Monitor komplikasi akibat hipertermia",
    ], terapeutik: [
      "Sediakan lingkungan yang dingin",
      "Longgarkan atau lepaskan pakaian",
      "Basahi atau kipasi permukaan tubuh",
      "Berikan cairan oral",
      "Ganti linen setiap hari atau sering jika mengalami hiperhidrosis (keringat berlebih)",
      "Lakukan pendinginan eksternal (mis. Selimut hipotermia atau kompres dinginpada dahi, leher, dada, abdomen, aksila)",
      "Hindari pemberian antipiretik atau aspirin",
      "Berikan oksigen, jika perlu",
    ], edukasi: [
      "Anjurkan tirah baring",
    ], kolaborasi: [
      "Kolaborasikan pemberian cairan dan elektrolit, jika perlu",
    ]),
  ];
  String temperatureTingg;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 1;

    if (temperatureTingg == "Tinggi") {
      value += 1;
    }
    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    return treshold <= result;
  }
}

class PenurunanCurahJantung1 extends Penyakit {
  PenurunanCurahJantung1(
      {required this.gambaranEKGArtimia,
      required this.gambaranEKGGanguanKodenksi});
  @override
  final String name = "penurunan curah jantung";
  @override
  final String code = "D.0008";
  @override
  final String luaranYgDigunakan = "Curah jantung (L.02008)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Perawatan Jantung Akut", code: "I.02076", observasi: [
      "Identifikasi karakteristik nyeri dada (meliputi faktor pemicu dan pereda, kualitas, lokasi, radiasi, skala, durasi dan frekuensi)",
      "Monito EKG 12 sadapan untuk perubahan ST dan T",
      "Monitor aritmia (kelainan irama dan frekuensi)",
      "Monitor elektrolit yang dapat meningkatkan risiko aritmia (kalium, magnesium serum)",
      "Monitor enzim jantung (CK, CK-MB, Troponin T, Troponin I)",
      "Monitor saturasi oksigen",
      "Identifikasi stratifikasi pada sindrom koroner aku (skor TIMI, Killip, Crusade)",
    ], terapeutik: [
      "Pertahankan tirah baring minimal 12 jam",
      "Pasang akses intravena",
      "Puasakan hingga bebas nyeri",
      "Berikan terapi relaksasi untuk mengurangi ansietas dan stres",
      "Sediakan lingkungan yang kondusif untuk beristirahat dan pemulihan",
      "Siapkan menjalani intervensi koroner perkutan, jika perlu",
    ], edukasi: [
      "Anjurkan segera melaporkan nyeri dada",
      "Anjurkan menghindari manuver valsava (mengedan saat BAB atau batuk)",
      "Jelaskan tindakan yang dijalani pasien",
      "Ajarkan teknik menurunkan kecemasan dan ketakutan",
    ], kolaborasi: [
      "Kolaborasi pemberian antiplatelet, Jika perlu",
      "Kolaborasi pemberian antiangina (nitrogliserin, beta blocker, calcium channel blocker)",
      "Kolaborasi pemberian morfin, Jika perlu",
      "Kolaborasi pemberian inotropik, Jika perlu",
      "Kolaborasi pemberian obat untuk mencegah manuver valsava (pelunak tinja, antiemetik)",
      "Kolaborasi pencegahan trombus dengan antikoagulan, jika perlu",
      "Kolaborasi pemeriksaan X-ray dada, Jika perlu",
    ]),
  ];
  bool gambaranEKGArtimia;
  bool gambaranEKGGanguanKodenksi;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 2;
    if (gambaranEKGArtimia) {
      value += 1;
    }
    if (gambaranEKGGanguanKodenksi) {
      value += 1;
    }
    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    return treshold <= result;
  }
}

class PenurunanCurahJantung2 extends Penyakit {
  PenurunanCurahJantung2(
      {required this.cvpMeningkat,
      required this.edemaLainLain,
      required this.disetensiVenajugularis,
      required this.kelelahan});
  @override
  final String name = "penurunan curah jantung";
  @override
  final String code = "D.0008";
  @override
  final String luaranYgDigunakan = "Curah jantung (L.02008)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Perawatan Jantung Akut", code: "I.02076", observasi: [
      "Identifikasi karakteristik nyeri dada (meliputi faktor pemicu dan pereda, kualitas, lokasi, radiasi, skala, durasi dan frekuensi)",
      "Monito EKG 12 sadapan untuk perubahan ST dan T",
      "Monitor aritmia (kelainan irama dan frekuensi)",
      "Monitor elektrolit yang dapat meningkatkan risiko aritmia (kalium, magnesium serum)",
      "Monitor enzim jantung (CK, CK-MB, Troponin T, Troponin I)",
      "Monitor saturasi oksigen",
      "Identifikasi stratifikasi pada sindrom koroner aku (skor TIMI, Killip, Crusade)",
    ], terapeutik: [
      "Pertahankan tirah baring minimal 12 jam",
      "Pasang akses intravena",
      "Puasakan hingga bebas nyeri",
      "Berikan terapi relaksasi untuk mengurangi ansietas dan stres",
      "Sediakan lingkungan yang kondusif untuk beristirahat dan pemulihan",
      "Siapkan menjalani intervensi koroner perkutan, jika perlu",
    ], edukasi: [
      "Anjurkan segera melaporkan nyeri dada",
      "Anjurkan menghindari manuver valsava (mengedan saat BAB atau batuk)",
      "Jelaskan tindakan yang dijalani pasien",
      "Ajarkan teknik menurunkan kecemasan dan ketakutan",
    ], kolaborasi: [
      "Kolaborasi pemberian antiplatelet, Jika perlu",
      "Kolaborasi pemberian antiangina (nitrogliserin, beta blocker, calcium channel blocker)",
      "Kolaborasi pemberian morfin, Jika perlu",
      "Kolaborasi pemberian inotropik, Jika perlu",
      "Kolaborasi pemberian obat untuk mencegah manuver valsava (pelunak tinja, antiemetik)",
      "Kolaborasi pencegahan trombus dengan antikoagulan, jika perlu",
      "Kolaborasi pemeriksaan X-ray dada, Jika perlu",
    ]),
  ];
  String cvpMeningkat;
  bool edemaLainLain;
  bool disetensiVenajugularis;
  bool kelelahan;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 4;

    if (cvpMeningkat == "Meningkat") {
      value += 1;
    }
    if (edemaLainLain) {
      value += 1;
    }
    if (disetensiVenajugularis) {
      value += 1;
    }
    if (kelelahan) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    return treshold <= result;
  }
}

class PenurunanCurahJantung3 extends Penyakit {
  PenurunanCurahJantung3(
      {required this.kualitasLemah,
      required this.crt,
      required this.kulitPucat,
      required this.urineTrend,
      required this.dispena});
  @override
  final String name = "penurunan curah jantung";
  @override
  final String code = "D.0008";
  @override
  final String luaranYgDigunakan = "Curah jantung (L.02008)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Perawatan Jantung Akut", code: "I.02076", observasi: [
      "Identifikasi karakteristik nyeri dada (meliputi faktor pemicu dan pereda, kualitas, lokasi, radiasi, skala, durasi dan frekuensi)",
      "Monito EKG 12 sadapan untuk perubahan ST dan T",
      "Monitor aritmia (kelainan irama dan frekuensi)",
      "Monitor elektrolit yang dapat meningkatkan risiko aritmia (kalium, magnesium serum)",
      "Monitor enzim jantung (CK, CK-MB, Troponin T, Troponin I)",
      "Monitor saturasi oksigen",
      "Identifikasi stratifikasi pada sindrom koroner aku (skor TIMI, Killip, Crusade)",
    ], terapeutik: [
      "Pertahankan tirah baring minimal 12 jam",
      "Pasang akses intravena",
      "Puasakan hingga bebas nyeri",
      "Berikan terapi relaksasi untuk mengurangi ansietas dan stres",
      "Sediakan lingkungan yang kondusif untuk beristirahat dan pemulihan",
      "Siapkan menjalani intervensi koroner perkutan, jika perlu",
    ], edukasi: [
      "Anjurkan segera melaporkan nyeri dada",
      "Anjurkan menghindari manuver valsava (mengedan saat BAB atau batuk)",
      "Jelaskan tindakan yang dijalani pasien",
      "Ajarkan teknik menurunkan kecemasan dan ketakutan",
    ], kolaborasi: [
      "Kolaborasi pemberian antiplatelet, Jika perlu",
      "Kolaborasi pemberian antiangina (nitrogliserin, beta blocker, calcium channel blocker)",
      "Kolaborasi pemberian morfin, Jika perlu",
      "Kolaborasi pemberian inotropik, Jika perlu",
      "Kolaborasi pemberian obat untuk mencegah manuver valsava (pelunak tinja, antiemetik)",
      "Kolaborasi pencegahan trombus dengan antikoagulan, jika perlu",
      "Kolaborasi pemeriksaan X-ray dada, Jika perlu",
    ]),
  ];
  bool kualitasLemah;
  bool crt;
  bool kulitPucat;
  String urineTrend;
  bool dispena;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 5;
    if (urineTrend == "Menurun") {
      value += 1;
    }
    if (kualitasLemah) {
      value += 1;
    }
    if (crt) {
      value += 1;
    }
    if (kulitPucat) {
      value += 1;
    }
    if (dispena) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    print("$value,$totalParams");
    return treshold <= result;
  }
}

class BersihanJalanNafasTidakEfektifD001 extends Penyakit {
  BersihanJalanNafasTidakEfektifD001({
    required this.tidakmampubatuk,
    required this.penumpukanSputum,
  });
  @override
  final String name = "Bersihan Jalan Nafas Tidak Efektif";
  @override
  final String code = "D.0001";
  @override
  final String luaranYgDigunakan = "Bersihan jalan Nafas";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Pencegahan Aspirasi", code: "I.01018", observasi: [
      "Monitor tingkat kesadaran batuk, muntah dan kemampuan menelan",
      "Monitor status pernafasan",
      "Monitor bunyi nafas.",
    ], terapeutik: [
      "Posisikan semi fowler (30-45 derajat)",
      "Pertahankan kepatenan jalan nafas (mis.head till chin lift, jaw thrust, in line).",
      "Pertahankan pengembangan balon endotrakeal tube (ETT).",
      "Lakukan penghisapan jalan nafas.",
      "Sediakan suction"
    ], edukasi: [
      "Ajarkan strategi mencegah aspirasi"
    ], kolaborasi: []),
    Pencegahan(nama: "Manajemen jalan nafas", code: "I.01011", observasi: [
      "Monitor pola nafas (frekuensi, kedalaman, usaha nafas)",
      "Monitor bunyi nafas tambahan",
      "Monitor sputum (jumlah, warna, aroma)",
    ], terapeutik: [
      "Pertahankan kepatenan jalan nafas dengan head till dan chin litf",
      "Posisikan semifowler atau fowler",
      "Melakukan fisioterapi dada, jika perlu",
      "Lakukan penghisapan lendir kurang dari 15 detik",
      "Keluarkan sumbatan benda padat dengan forsep mcgill",
      "Beri O2 bila perlu",
    ], edukasi: [
      "Anjarkan teknik batuk efektif"
    ], kolaborasi: [
      "Kolab pemberian bronkodilator",
      "ekspektoran, mukolitik (jika perlu)"
    ]),
  ];
  bool tidakmampubatuk;
  bool penumpukanSputum;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 2;

    if (tidakmampubatuk) {
      value += 1;
    }
    if (penumpukanSputum) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    print("$value,$totalParams");
    return treshold <= result;
  }
}

class PolaNafasTidakEfektifD0005 extends Penyakit {
  PolaNafasTidakEfektifD0005({
    required this.dispnea,
    required this.frekuensiEkspirasimemanjang,
    required this.jelasBersih,
    required this.penggunaanOtotbantuNafas,
    required this.polanafasAbnormalmisTakipnea,
    required this.polanafasAbnormalmisBradipnea,
    required this.polanafasAbnormalmishiperventilasi,
    required this.ronchi,
    required this.wheeze,
  });
  @override
  final String name = "pola nafas tidak efektif";
  @override
  final String code = "D.0005";
  @override
  final String luaranYgDigunakan = "Pola Nafas (L.01004)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Manajemen jalan nafas", code: "I.01011", observasi: [
      "Monitor pola nafas (frekuensi, kedalaman, usaha nafas)",
      "Monitor bunyi nafas tambahan",
      "Monitor sputum (jumlah, warna, aroma)",
    ], terapeutik: [
      "Pertahankan kepatenan jalan nafas dengan head till dan chin litf",
      "Posisikan semifowler atau fowler",
      "Melakukan fisioterapi dada, jika perlu",
      "Lakukan penghisapan lendir kurang dari 15 detik",
      "Keluarkan sumbatan benda padat dengan forsep mcgill",
      "Beri O2 bila perlu",
    ], edukasi: [
      "Anjarkan teknik batuk efektif"
    ], kolaborasi: [
      "Kolab pemberian bronkodilator",
      "ekspektoran, mukolitik (jika perlu)"
    ]),
  ];
  bool dispnea;
  bool penggunaanOtotbantuNafas;
  bool frekuensiEkspirasimemanjang;
  bool polanafasAbnormalmisTakipnea;
  bool polanafasAbnormalmisBradipnea;
  bool polanafasAbnormalmishiperventilasi;
  bool jelasBersih;
  bool ronchi;
  bool wheeze;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 9;
    if (dispnea) {
      value += 1;
    }
    if (penggunaanOtotbantuNafas) {
      value += 1;
    }
    if (frekuensiEkspirasimemanjang) {
      value += 1;
    }
    if (polanafasAbnormalmisTakipnea) {
      value += 1;
    }
    if (polanafasAbnormalmisBradipnea) {
      value += 1;
    }
    if (polanafasAbnormalmishiperventilasi) {
      value += 1;
    }
    if (jelasBersih) {
      value += 1;
    }
    if (ronchi) {
      value += 1;
    }
    if (wheeze) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    print("$value,$totalParams");
    return treshold <= result;
  }
}

class NyeriAkut0007 extends Penyakit {
  NyeriAkut0007({
    required this.frekuensiNadimeningkat,
    required this.nyeriAda,
    required this.nyeriAdaBersikapProtektif,
    required this.nyeriAdaGelisah,
    required this.nyeriAdaTampakMeringis,
    required this.nyeriSulitTidur,
  });
  @override
  final String name = "nyeri akut";
  @override
  final String code = "D.0077";
  @override
  final String luaranYgDigunakan = "Tingkat nyeri (L.08066)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Manajemen Nyeri", code: "I.08238", observasi: [
      "Identifikasi lokasi, karakteristik, durasi, frekuensi, kualitas, intensitas nyeri",
      "Identifikasi skala nyeri",
      "Identifikasi respon nyeri nonverbal",
      "Identifikasi faktor memperberat dan memperingan nyeri",
      "Identifikasi pengetahuan dan keyakinan tentang nyeri",
      "Idintifikasi pengaruh budaya terhadap respon nyeri",
      "Identifikasi pengaruh nyeri pada kualitas hidup",
      "Monitor keberhasilan terapo komplemnetar yang sudah diberikan",
      "Monitor efeksamping penggunaan analgetik",
    ], terapeutik: [
      "Berikan teknik nonfarmakologis untuk mengurangi rasa nyeri (mis. TENS, hipnosis, akupresur, terapi musik, biofeedback, terapi pijat, aromaterapi, teknik imajinasi terbimbing, kompres hangat/dingin, terapi bermain)",
      "Kontrol lingkungan yang memperberat rasa nyeri (mis. Suhu ruangan, pencahayaan, kebersihan)",
      "Fasilitasi istirahat dan tidur",
      "Pertimbangkan jenis dan sumber nyeri dalam pemilihan strategi meredakan nyeri",
    ], edukasi: [
      "Jelaskan penyebab, periode, dan pemicu nyeri",
      "Jelaskan strategi meredakan nyeri",
      "Anjurkan memonitor nyeri secara mandiri",
      "Anjurkan menggunakan analgetik secara tepat",
      "Ajarkan teknik nonfarmakologis untuk mengurangi nyeri",
    ], kolaborasi: [
      "Kolaborasikan pemberian analgetik, jika perlu",
    ]),
  ];
  String frekuensiNadimeningkat;
  bool nyeriAda;
  bool nyeriAdaTampakMeringis;
  bool nyeriAdaBersikapProtektif;
  bool nyeriAdaGelisah;
  bool nyeriSulitTidur;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 6;
    if (frekuensiNadimeningkat == "Meningkat") {
      value += 1;
    }
    if (nyeriAda) {
      value += 1;
    }
    if (nyeriAdaTampakMeringis) {
      value += 1;
    }
    if (nyeriAdaBersikapProtektif) {
      value += 1;
    }
    if (nyeriAdaGelisah) {
      value += 1;
    }
    if (nyeriSulitTidur) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    print("$value,$totalParams");
    return treshold <= result;
  }
}

class PerfusiperifertidakefektifD0009 extends Penyakit {
  PerfusiperifertidakefektifD0009(
      {required this.crtlebihduadetik,
      required this.dingin,
      required this.kualitaslemah,
      required this.pucat,
      required this.turgorkulitmenurun});
  @override
  final String name = "Perfusi perifer tidak efektif";
  @override
  final String code = "D.0009";
  @override
  final String luaranYgDigunakan = "Perfusi perfier (L.02011)";
  @override
  final List<Pencegahan> pencegahan = [
    Pencegahan(nama: "Manajemen Sensasi Perifer", code: "I.06195", observasi: [
      "Identifikasi penyebab perubahan sensasi",
      "Identifikasi penggunaan alat pengikat, prostesis, sepatu, dan pakaian",
      "Periksa perbedaan sensasi tajam dan tumpul",
      "Periksa perbedaan sensasi panas dan dingin",
      "Periksa kemampuan mengidentifikasi lokasi dan testur benda",
      "Monitor terjadinya parestesia, (jika perlu)",
      "Monitor perubahan kulit",
      "Monitor adanya tromboflebitis dan tromboemboli vena",
    ], terapeutik: [
      "Hindari pemakaian benda-benda yang berlebihan suhunya (terlalu panas atau dingin)",
    ], edukasi: [
      "Anjurkan penggunaan termometer untuk menguji suhu air",
      "Anjurkan penggunaan sarung tangan termal saat memasak",
      "Anjurkan memakai sepatu dan bertumit rendah"
    ], kolaborasi: [
      "Kolaborasikan pemberian analgesik, jika perlu",
      "Kolaborasikan pemberian kortikosteroid, jika perlu"
    ]),
    Pencegahan(nama: "Perawatan Sirkulasi", code: "I.02079", observasi: [
      "Periksa sirkulasi perifer (mis. Nadi perifer, edema, pegisian kapiler, warna, suhu)",
      "Identifikasi faktor resiko gangguan sirkulasi (mis. DM, perokok, orang tua, HT dan kolesterol tinggi)",
      "Monitor panas, kemerahan, nyeri atau bengkak pada extermitas",
    ], terapeutik: [
      "Hindari pemasangan infus atau pengambilan darah di area keterbatasan perfusi.",
      "Hindari pengukuran tekanan dara pada extermitas dengan keterbatasan perfusi.",
      "Hindari penekanan dan pemasangan tourniquet pada area cidera.",
      "Lakukan hidrasi"
    ], edukasi: [
      "Anjurkan minum obat pengontrol tekanan darah secara teratur.",
    ], kolaborasi: [])
  ];
  bool kualitaslemah;
  bool crtlebihduadetik;
  bool dingin;
  bool pucat;
  String turgorkulitmenurun;
  @override
  bool getValue() {
    int value = 0;
    int totalParams = 5;
    if (turgorkulitmenurun == "Menurun") {
      value += 1;
    }
    if (kualitaslemah) {
      value += 1;
    }
    if (crtlebihduadetik) {
      value += 1;
    }
    if (dingin) {
      value += 1;
    }
    if (pucat) {
      value += 1;
    }

    double result = value / totalParams;
    double treshold = totalParams * 0.8;
    print("$value,$totalParams");
    return treshold <= result;
  }
}

class Pencegahan {
  Pencegahan({
    required this.nama,
    required this.code,
    required this.observasi,
    required this.terapeutik,
    required this.edukasi,
    required this.kolaborasi,
  });
  String nama;
  String code;
  List<String> observasi;
  List<String> terapeutik;
  List<String> edukasi;
  List<String> kolaborasi;
}
