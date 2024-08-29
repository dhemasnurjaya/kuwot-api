// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kuwot_api/data/models/unsplash_image_model.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required String id,
    required String description,
    required String color,
    required String blurHash,
    required String url,
    required String originUrl,
    required String authorName,
    required String authorProfileImageUrl,
    required String authorUrl,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  // ignore: prefer_constructors_over_static_methods
  static Image fromModel(UnsplashImageModel model) => Image(
        id: model.id,
        description: model.description,
        color: model.color,
        blurHash: model.blurHash,
        url: model.urls.regular,
        originUrl: model.links.html,
        authorName: model.user.name,
        authorProfileImageUrl: model.user.profileImage.medium,
        authorUrl: model.user.links.html,
      );
}
