// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matakuliah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Matakuliah _$MatakuliahFromJson(Map<String, dynamic> json) => Matakuliah(
      matakuliah: json['matakuliah'] as String,
      sks: json['sks'] as String,
      kelas: json['kelas'] as String,
      nilaiHuruf: json['nilai_huruf'] as String,
      nilaiRataRata: json['nilai_rata_rata'] as String,
    );

Map<String, dynamic> _$MatakuliahToJson(Matakuliah instance) =>
    <String, dynamic>{
      'matakuliah': instance.matakuliah,
      'sks': instance.sks,
      'kelas': instance.kelas,
      'nilai_huruf': instance.nilaiHuruf,
      'nilai_rata_rata': instance.nilaiRataRata,
    };
