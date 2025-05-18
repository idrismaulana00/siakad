import 'package:json_annotation/json_annotation.dart';
import 'package:p6siakad/page/nilaipage/khs/model/matakuliah.dart';

part 'khs.g.dart';

@JsonSerializable()
class Khs {
  final String ips;
  final String sks;
  final List<Matakuliah> matakuliahs;

  Khs({required this.ips, required this.sks, required this.matakuliahs});

  factory Khs.fromJson(Map<String, dynamic> json) => _$KhsFromJson(json);
}
