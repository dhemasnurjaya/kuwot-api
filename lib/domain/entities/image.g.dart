// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: json['id'] as String,
      description: json['description'] as String,
      color: json['color'] as String,
      blurHash: json['blurHash'] as String,
      url: json['url'] as String,
      originUrl: json['originUrl'] as String,
      authorName: json['authorName'] as String,
      authorBio: json['authorBio'] as String,
      authorLocation: json['authorLocation'] as String,
      authorTotalLikes: (json['authorTotalLikes'] as num).toInt(),
      authorTotalPhotos: (json['authorTotalPhotos'] as num).toInt(),
      authorIsForHire: json['authorIsForHire'] as bool,
      authorProfileImageUrl: json['authorProfileImageUrl'] as String,
      authorUrl: json['authorUrl'] as String,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'url': instance.url,
      'originUrl': instance.originUrl,
      'authorName': instance.authorName,
      'authorBio': instance.authorBio,
      'authorLocation': instance.authorLocation,
      'authorTotalLikes': instance.authorTotalLikes,
      'authorTotalPhotos': instance.authorTotalPhotos,
      'authorIsForHire': instance.authorIsForHire,
      'authorProfileImageUrl': instance.authorProfileImageUrl,
      'authorUrl': instance.authorUrl,
    };
