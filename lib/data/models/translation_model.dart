// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation_model.freezed.dart';

@freezed
class TranslationModel with _$TranslationModel {
  /// A model for translation.
  const factory TranslationModel({
    /// The translation id, this will be a language id.
    required String id,

    /// Language name.
    required String lang,

    /// Translated quote table name.
    required String tableName,
  }) = _TranslationModel;
}
