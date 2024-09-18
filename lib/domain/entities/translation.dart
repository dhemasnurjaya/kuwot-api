// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kuwot_api/data/models/translation_model.dart';

part 'translation.freezed.dart';
part 'translation.g.dart';

@freezed
class Translation with _$Translation {
  /// A model for translation.
  const factory Translation({
    /// The translation id, this will be a language id.
    required String id,

    /// Language name.
    required String lang,

    /// Translated quote table name.
    required String tableName,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);

  // ignore: prefer_constructors_over_static_methods
  static Translation fromModel(TranslationModel model) => Translation(
        id: model.id,
        lang: model.lang,
        tableName: model.tableName,
      );
}
