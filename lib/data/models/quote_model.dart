// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_model.freezed.dart';

@freezed
class QuoteModel with _$QuoteModel {
  const factory QuoteModel({
    required int id,
    required String quote,
    required String author,
  }) = _QuoteModel;
}
