import 'package:json_annotation/json_annotation.dart';

part 'matakuliah.g.dart';

@JsonSerializable()
class Matakuliah {
  final String matakuliah;
  final String sks;
  final String kelas;
  @JsonKey(name: 'nilai_huruf')
  final String nilaiHuruf;
  @JsonKey(name: 'nilai_rata_rata')
  final String nilaiRataRata;

  Matakuliah(
      {required this.matakuliah,
      required this.sks,
      required this.kelas,
      required this.nilaiHuruf,
      required this.nilaiRataRata});

  factory Matakuliah.fromJson(Map<String, dynamic> json) =>
      _$MatakuliahFromJson(json);
}
