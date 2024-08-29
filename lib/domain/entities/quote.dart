// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kuwot_api/data/models/quote_model.dart';

part 'quote.freezed.dart';
part 'quote.g.dart';

@freezed
class Quote with _$Quote {
  const factory Quote({
    required int id,
    required String text,
    required String author,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  // ignore: prefer_constructors_over_static_methods
  static Quote fromModel(QuoteModel model) {
    return Quote(
      id: model.id,
      text: model.quote,
      author: model.author,
    );
  }
}
