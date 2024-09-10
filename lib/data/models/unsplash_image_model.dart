// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unsplash_image_model.freezed.dart';
part 'unsplash_image_model.g.dart';

@freezed
class UnsplashImageModel with _$UnsplashImageModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UnsplashImageModel({
    required String id,
    @JsonKey(name: 'alt_description') required String description,
    required String color,
    required String blurHash,
    required UnsplashImageUrls urls,
    required UnsplashLinks links,
    required UnsplashUser user,
  }) = _UnsplashImageModel;

  factory UnsplashImageModel.fromJson(Map<String, dynamic> json) =>
      _$UnsplashImageModelFromJson(json);
}

@freezed
class UnsplashImageUrls with _$UnsplashImageUrls {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UnsplashImageUrls({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) = _UnsplashImageUrls;

  factory UnsplashImageUrls.fromJson(Map<String, dynamic> json) =>
      _$UnsplashImageUrlsFromJson(json);
}

@freezed
class UnsplashLinks with _$UnsplashLinks {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UnsplashLinks({
    required String self,
    required String html,
  }) = _UnsplashLinks;

  factory UnsplashLinks.fromJson(Map<String, dynamic> json) =>
      _$UnsplashLinksFromJson(json);
}

@freezed
class UnsplashUser with _$UnsplashUser {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UnsplashUser({
    required String id,
    required String username,
    required String name,
    required String? location,
    required String? bio,
    required bool forHire,
    required int totalLikes,
    required int totalPhotos,
    required UnsplashUserProfileImages profileImage,
    required UnsplashLinks links,
  }) = _UnsplashUser;

  factory UnsplashUser.fromJson(Map<String, dynamic> json) =>
      _$UnsplashUserFromJson(json);
}

@freezed
class UnsplashUserProfileImages with _$UnsplashUserProfileImages {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UnsplashUserProfileImages({
    required String small,
    required String medium,
    required String large,
  }) = _UnsplashUserProfileImages;

  factory UnsplashUserProfileImages.fromJson(Map<String, dynamic> json) =>
      _$UnsplashUserProfileImagesFromJson(json);
}
