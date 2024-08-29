// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteImpl _$$QuoteImplFromJson(Map<String, dynamic> json) => _$QuoteImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      author: json['author'] as String,
    );

Map<String, dynamic> _$$QuoteImplToJson(_$QuoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'author': instance.author,
    };
