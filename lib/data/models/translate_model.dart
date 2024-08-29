// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate_model.freezed.dart';
part 'translate_model.g.dart';

@freezed
class TranslateModel with _$TranslateModel {
  const factory TranslateModel({
    required DetectedLanguage detectedLanguage,
    required String translatedText,
  }) = _TranslateModel;

  factory TranslateModel.fromJson(Map<String, dynamic> json) =>
      _$TranslateModelFromJson(json);
}

@freezed
class DetectedLanguage with _$DetectedLanguage {
  const factory DetectedLanguage({
    required String language,
    required double confidence,
  }) = _DetectedLanguage;

  factory DetectedLanguage.fromJson(Map<String, dynamic> json) =>
      _$DetectedLanguageFromJson(json);
}
