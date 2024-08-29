// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TranslateModelImpl _$$TranslateModelImplFromJson(Map<String, dynamic> json) =>
    _$TranslateModelImpl(
      detectedLanguage: DetectedLanguage.fromJson(
          json['detectedLanguage'] as Map<String, dynamic>),
      translatedText: json['translatedText'] as String,
    );

Map<String, dynamic> _$$TranslateModelImplToJson(
        _$TranslateModelImpl instance) =>
    <String, dynamic>{
      'detectedLanguage': instance.detectedLanguage,
      'translatedText': instance.translatedText,
    };

_$DetectedLanguageImpl _$$DetectedLanguageImplFromJson(
        Map<String, dynamic> json) =>
    _$DetectedLanguageImpl(
      language: json['language'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$$DetectedLanguageImplToJson(
        _$DetectedLanguageImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'confidence': instance.confidence,
    };
