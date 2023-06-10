// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'origin.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class Origin extends Equatable {
  @JsonKey(defaultValue: 'name')
  final String? name;
  @JsonKey(defaultValue: 'url')
  final String? url;

  const Origin({this.name, this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);

  Map<String, dynamic> toJson() => _$OriginToJson(this);

  @override
  List<Object?> get props => [name, url];
}
