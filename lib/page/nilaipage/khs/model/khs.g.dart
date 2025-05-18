// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'khs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Khs _$KhsFromJson(Map<String, dynamic> json) => Khs(
      ips: json['ips'] as String,
      sks: json['sks'] as String,
      matakuliahs: (json['matakuliahs'] as List<dynamic>)
          .map((e) => Matakuliah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KhsToJson(Khs instance) => <String, dynamic>{
      'ips': instance.ips,
      'sks': instance.sks,
      'matakuliahs': instance.matakuliahs,
    };
