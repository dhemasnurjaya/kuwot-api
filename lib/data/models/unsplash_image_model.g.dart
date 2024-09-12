// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnsplashImageModelImpl _$$UnsplashImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsplashImageModelImpl(
      id: json['id'] as String,
      altDescription: json['alt_description'] as String?,
      color: json['color'] as String,
      blurHash: json['blur_hash'] as String,
      urls: UnsplashImageUrls.fromJson(json['urls'] as Map<String, dynamic>),
      links: UnsplashLinks.fromJson(json['links'] as Map<String, dynamic>),
      user: UnsplashUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnsplashImageModelImplToJson(
        _$UnsplashImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alt_description': instance.altDescription,
      'color': instance.color,
      'blur_hash': instance.blurHash,
      'urls': instance.urls.toJson(),
      'links': instance.links.toJson(),
      'user': instance.user.toJson(),
    };

_$UnsplashImageUrlsImpl _$$UnsplashImageUrlsImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsplashImageUrlsImpl(
      raw: json['raw'] as String,
      full: json['full'] as String,
      regular: json['regular'] as String,
      small: json['small'] as String,
      thumb: json['thumb'] as String,
    );

Map<String, dynamic> _$$UnsplashImageUrlsImplToJson(
        _$UnsplashImageUrlsImpl instance) =>
    <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };

_$UnsplashLinksImpl _$$UnsplashLinksImplFromJson(Map<String, dynamic> json) =>
    _$UnsplashLinksImpl(
      self: json['self'] as String,
      html: json['html'] as String,
    );

Map<String, dynamic> _$$UnsplashLinksImplToJson(_$UnsplashLinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
    };

_$UnsplashUserImpl _$$UnsplashUserImplFromJson(Map<String, dynamic> json) =>
    _$UnsplashUserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      location: json['location'] as String?,
      bio: json['bio'] as String?,
      forHire: json['for_hire'] as bool,
      totalLikes: (json['total_likes'] as num).toInt(),
      totalPhotos: (json['total_photos'] as num).toInt(),
      profileImage: UnsplashUserProfileImages.fromJson(
          json['profile_image'] as Map<String, dynamic>),
      links: UnsplashLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnsplashUserImplToJson(_$UnsplashUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'location': instance.location,
      'bio': instance.bio,
      'for_hire': instance.forHire,
      'total_likes': instance.totalLikes,
      'total_photos': instance.totalPhotos,
      'profile_image': instance.profileImage.toJson(),
      'links': instance.links.toJson(),
    };

_$UnsplashUserProfileImagesImpl _$$UnsplashUserProfileImagesImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsplashUserProfileImagesImpl(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$UnsplashUserProfileImagesImplToJson(
        _$UnsplashUserProfileImagesImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };
