import 'package:flutteruhuy/app/data/biodata_model.dart';
import 'package:get/get.dart';

class BiodataController extends GetxController {
  final nama = ''.obs;
  final jenisKelamin = ''.obs;
  final agama = ''.obs;
  final tanggalLahir = DateTime.now().obs;
  final alamat = ''.obs;

  //untuk mengubah nilai
  void setNama(String value) => nama.value = value;
  void setJenisKelamin(String? value){
    if(value != null) jenisKelamin.value = value;
  }
  
  void setAgama(String? value){
    if(value != null) agama.value = value;
  }
  
  void setTanggalLahir(DateTime value) => tanggalLahir.value = value;
  void setAlamat(String value) => alamat.value = value;

  void submitForm() {
    //proses data formulir atau navigasikan ke halaman lain
    final formData = BiodataModel(
      nama: nama.value, 
      jenisKelamin: jenisKelamin.value, 
      agama: agama.value, 
      tanggalLahir: tanggalLahir.value, 
      alamat: alamat.value
      );
      Get.toNamed('/output', arguments: formData);
  }
}
