import 'package:flutter_test/flutter_test.dart';
import 'package:nurse_application_1/helper/function_helper.dart';

void main() {
  group('testing for Hipervolemi with code D22', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      HipervolemiaD22 trueResult = HipervolemiaD22(
          hepatojugular: 'Positive',
          jvpMeningkat: 'Meningkat',
          pnd: true,
          ortopnea: true,
          edemaAnarsaka: true,
          edemaPerifer: true,
          bbSekarang: 'Meningkat dalam waktu yang singkat',
          cvp: 'Meningkat');

      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      HipervolemiaD22 falseResult = HipervolemiaD22(
          hepatojugular: ' ',
          jvpMeningkat: ' ',
          pnd: false,
          ortopnea: false,
          edemaAnarsaka: false,
          edemaPerifer: false,
          bbSekarang: '',
          cvp: '');
      //act
      bool expectedResult = falseResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return true when 80% parameter correct', () {
      //arrange
      bool actualResult = true;
      HipervolemiaD22 trueResult = HipervolemiaD22(
          hepatojugular: 'Positive',
          jvpMeningkat: 'Meningkat',
          pnd: true,
          ortopnea: true,
          edemaAnarsaka: true,
          edemaPerifer: true,
          bbSekarang: ' ',
          cvp: 'Meningkat');

      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
  });
  group('testing for Hipovolemia with code D23', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      HipovolemiaD23 trueResult = HipovolemiaD23(
          circulationMembranMurkosa: 'Kering',
          hematokrit: 'Meningkat',
          tDMenyempit: 'Menyempit',
          tDTurun: 'Turun',
          nadiTakikardi: true,
          circulationKualitasLemah: true,
          circulationTugorMenurun: 'Menurun',
          outpitUrineMenurun: 'Menurun');
      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      HipovolemiaD23 falseResult = HipovolemiaD23(
          circulationMembranMurkosa: ' ',
          circulationTugorMenurun: ' ',
          hematokrit: ' ',
          tDMenyempit: ' ',
          tDTurun: ' ',
          nadiTakikardi: false,
          circulationKualitasLemah: false,
          outpitUrineMenurun: ' ');

      //act
      bool expectedResult = falseResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return true when 80% parameter correct', () {
      //arrange
      bool actualResult = true;
      HipovolemiaD23 trueResult = HipovolemiaD23(
          circulationMembranMurkosa: ' ',
          hematokrit: 'Meningkat',
          tDMenyempit: 'Menyempit',
          tDTurun: 'Turun',
          nadiTakikardi: true,
          circulationKualitasLemah: true,
          circulationTugorMenurun: 'Menurun',
          outpitUrineMenurun: 'Menurun');
      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
  });

  group('testing for Hipertemia with code D130', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      HipertemiaD130 trueResult = HipertemiaD130(
        temperatureTinggi: 'Tinggi',
      );
      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      HipertemiaD130 falseResult = HipertemiaD130(
        temperatureTinggi: ' ',
      );
      //act
      bool expectedResult = falseResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
  });
  group('testing for Penurunan Curah Jantung 1', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      PenurunanCurahJantung1 trueResult = PenurunanCurahJantung1(
          gambaranEKGArtimia: true,
          gambaranEKGGanguanKodenksi: true,
          bradikardi: true,
          palpitasi: true,
          takikardi: true);

      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      PenurunanCurahJantung1 falseResult = PenurunanCurahJantung1(
          gambaranEKGArtimia: false,
          gambaranEKGGanguanKodenksi: false,
          bradikardi: false,
          palpitasi: false,
          takikardi: false);

      //act
      bool expectedResult = falseResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return true when 80% parameter correct', () {
      //arrange
      bool actualResult = true;
      PenurunanCurahJantung1 trueResult = PenurunanCurahJantung1(
          gambaranEKGArtimia: false,
          gambaranEKGGanguanKodenksi: true,
          bradikardi: true,
          palpitasi: true,
          takikardi: true);

      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
  });
  group('testing for Penurunan Curah Jantung 2', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      PenurunanCurahJantung2 trueResult = PenurunanCurahJantung2(
          cvpMeningkat: 'Meningkat',
          edemaLainLain: true,
          disetensiVenajugularis: true,
          kelelahan: true);
      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      PenurunanCurahJantung2 falseResult = PenurunanCurahJantung2(
          cvpMeningkat: '',
          edemaLainLain: false,
          disetensiVenajugularis: false,
          kelelahan: false);
      //act
      bool expectedResult = falseResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
  });
  group('testing for Penurunan Curah Jantung 3', () {
    test('Should return true when all parameter correct with Tinggi', () {
      //arrange
      bool actualResult = true;
      PenurunanCurahJantung3 trueResult = PenurunanCurahJantung3(
          urineTrend: 'Menurun',
          crt: true,
          dispena: true,
          kualitasLemah: true,
          kulitPucat: true,
          tDTinggiorTurun: 'Tinggi');

      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return true when all parameter correct with Turun', () {
      //arrange
      bool actualResult = true;
      PenurunanCurahJantung3 trueResult = PenurunanCurahJantung3(
          urineTrend: 'Menurun',
          crt: true,
          dispena: true,
          kualitasLemah: true,
          kulitPucat: true,
          tDTinggiorTurun: 'Turun');

      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      PenurunanCurahJantung3 falseResult = PenurunanCurahJantung3(
          urineTrend: ' ',
          crt: false,
          dispena: false,
          kualitasLemah: false,
          kulitPucat: false,
          tDTinggiorTurun: '');
      //act
      bool expectedResult = falseResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
  });

  group('testing for Bersihan Jalan Nafas Tidak Efektif with code D001', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      BersihanJalanNafasTidakEfektifD001 trueResult =
          BersihanJalanNafasTidakEfektifD001(
              tidakmampubatuk: true,
              penumpukanSputum: true,
              dispnea: true,
              rochi: true);

      //act
      bool expectedResult = trueResult.getValue();
      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      BersihanJalanNafasTidakEfektifD001 falseResult =
          BersihanJalanNafasTidakEfektifD001(
              tidakmampubatuk: false,
              penumpukanSputum: false,
              dispnea: false,
              rochi: false);

      //act
      bool expectedResult = falseResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
  });

  group('testing for Pola Jalan Nafas Tidak Efektif with code D0005', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      PolaNafasTidakEfektifD0005 trueResult = PolaNafasTidakEfektifD0005(
          dispnea: true,
          frekuensiEkspirasimemanjang: true,
          penggunaanOtotbantuNafas: true,
          polanafasAbnormalmisBradipnea: true,
          polanafasAbnormalmishiperventilasi: true,
          polanafasAbnormalmisTakipnea: true,
          ronchi: true,
          wheeze: true);

      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return true when 80% parameter correct', () {
      //arrange
      bool actualResult = true;
      PolaNafasTidakEfektifD0005 trueResult = PolaNafasTidakEfektifD0005(
          dispnea: false,
          frekuensiEkspirasimemanjang: true,
          penggunaanOtotbantuNafas: true,
          polanafasAbnormalmisBradipnea: true,
          polanafasAbnormalmishiperventilasi: true,
          polanafasAbnormalmisTakipnea: true,
          ronchi: true,
          wheeze: true);

      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
    test(
        'Should return true when or parameter only one correct parameter correct',
        () {
      //arrange
      bool actualResult = true;
      PolaNafasTidakEfektifD0005 trueResult = PolaNafasTidakEfektifD0005(
          dispnea: false,
          frekuensiEkspirasimemanjang: true,
          penggunaanOtotbantuNafas: true,
          polanafasAbnormalmisBradipnea: false,
          polanafasAbnormalmishiperventilasi: false,
          polanafasAbnormalmisTakipnea: true,
          ronchi: false,
          wheeze: true);

      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      PolaNafasTidakEfektifD0005 falseResult = PolaNafasTidakEfektifD0005(
          dispnea: false,
          frekuensiEkspirasimemanjang: false,
          penggunaanOtotbantuNafas: false,
          polanafasAbnormalmisBradipnea: false,
          polanafasAbnormalmishiperventilasi: false,
          polanafasAbnormalmisTakipnea: false,
          ronchi: false,
          wheeze: false);

      //act
      bool expectedResult = falseResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
  });
  group('testing for Nyeri Akut with code D0007', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;

      NyeriAkut0007 trueResult = NyeriAkut0007(
          frekuensiNadimeningkat: 'Meningkat',
          nyeriAda: true,
          nyeriAdaTampakMeringis: true,
          nyeriAdaBersikapProtektif: true,
          nyeriAdaGelisah: true,
          nyeriSulitTidur: true);

      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;

      NyeriAkut0007 falseResult = NyeriAkut0007(
          frekuensiNadimeningkat: ' ',
          nyeriAda: false,
          nyeriAdaTampakMeringis: false,
          nyeriAdaBersikapProtektif: false,
          nyeriAdaGelisah: false,
          nyeriSulitTidur: false);
      //act
      bool expectedResult = falseResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });

    test('Should return true when 80% parameter correct', () {
      //arrange
      bool actualResult = true;

      NyeriAkut0007 trueResult = NyeriAkut0007(
          frekuensiNadimeningkat: ' ',
          nyeriAda: true,
          nyeriAdaTampakMeringis: true,
          nyeriAdaBersikapProtektif: true,
          nyeriAdaGelisah: true,
          nyeriSulitTidur: true);

      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
  });

  group('testing for Perfusi perifer tidak efektif with code D0009', () {
    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      PerfusiperifertidakefektifD0009 trueResult =
          PerfusiperifertidakefektifD0009(
              crtlebihduadetik: true,
              dingin: true,
              kualitaslemah: true,
              pucat: true,
              turgorkulitmenurun: 'Menurun');
      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });

    test('Should return false when all parameter incorrect', () {
      //arrange
      bool actualResult = false;
      PerfusiperifertidakefektifD0009 falseResult =
          PerfusiperifertidakefektifD0009(
              crtlebihduadetik: false,
              dingin: false,
              kualitaslemah: false,
              pucat: false,
              turgorkulitmenurun: ' ');
      //act
      bool expectedResult = falseResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });

    test('Should return true when all parameter correct', () {
      //arrange
      bool actualResult = true;
      PerfusiperifertidakefektifD0009 trueResult =
          PerfusiperifertidakefektifD0009(
              crtlebihduadetik: true,
              dingin: true,
              kualitaslemah: true,
              pucat: true,
              turgorkulitmenurun: ' ');
      //act
      bool expectedResult = trueResult.getValue();

      //assert
      expect(actualResult, expectedResult);
    });
  });
}
