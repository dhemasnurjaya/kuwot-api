// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unsplash_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnsplashImageModel _$UnsplashImageModelFromJson(Map<String, dynamic> json) {
  return _UnsplashImageModel.fromJson(json);
}

/// @nodoc
mixin _$UnsplashImageModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_description')
  String get description => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get blurHash => throw _privateConstructorUsedError;
  UnsplashImageUrls get urls => throw _privateConstructorUsedError;
  UnsplashLinks get links => throw _privateConstructorUsedError;
  UnsplashUser get user => throw _privateConstructorUsedError;

  /// Serializes this UnsplashImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsplashImageModelCopyWith<UnsplashImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashImageModelCopyWith<$Res> {
  factory $UnsplashImageModelCopyWith(
          UnsplashImageModel value, $Res Function(UnsplashImageModel) then) =
      _$UnsplashImageModelCopyWithImpl<$Res, UnsplashImageModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'alt_description') String description,
      String color,
      String blurHash,
      UnsplashImageUrls urls,
      UnsplashLinks links,
      UnsplashUser user});

  $UnsplashImageUrlsCopyWith<$Res> get urls;
  $UnsplashLinksCopyWith<$Res> get links;
  $UnsplashUserCopyWith<$Res> get user;
}

/// @nodoc
class _$UnsplashImageModelCopyWithImpl<$Res, $Val extends UnsplashImageModel>
    implements $UnsplashImageModelCopyWith<$Res> {
  _$UnsplashImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? color = null,
    Object? blurHash = null,
    Object? urls = null,
    Object? links = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UnsplashImageUrls,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UnsplashLinks,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UnsplashUser,
    ) as $Val);
  }

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnsplashImageUrlsCopyWith<$Res> get urls {
    return $UnsplashImageUrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnsplashLinksCopyWith<$Res> get links {
    return $UnsplashLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnsplashUserCopyWith<$Res> get user {
    return $UnsplashUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnsplashImageModelImplCopyWith<$Res>
    implements $UnsplashImageModelCopyWith<$Res> {
  factory _$$UnsplashImageModelImplCopyWith(_$UnsplashImageModelImpl value,
          $Res Function(_$UnsplashImageModelImpl) then) =
      __$$UnsplashImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'alt_description') String description,
      String color,
      String blurHash,
      UnsplashImageUrls urls,
      UnsplashLinks links,
      UnsplashUser user});

  @override
  $UnsplashImageUrlsCopyWith<$Res> get urls;
  @override
  $UnsplashLinksCopyWith<$Res> get links;
  @override
  $UnsplashUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UnsplashImageModelImplCopyWithImpl<$Res>
    extends _$UnsplashImageModelCopyWithImpl<$Res, _$UnsplashImageModelImpl>
    implements _$$UnsplashImageModelImplCopyWith<$Res> {
  __$$UnsplashImageModelImplCopyWithImpl(_$UnsplashImageModelImpl _value,
      $Res Function(_$UnsplashImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? color = null,
    Object? blurHash = null,
    Object? urls = null,
    Object? links = null,
    Object? user = null,
  }) {
    return _then(_$UnsplashImageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      blurHash: null == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as UnsplashImageUrls,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UnsplashLinks,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UnsplashUser,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UnsplashImageModelImpl implements _UnsplashImageModel {
  const _$UnsplashImageModelImpl(
      {required this.id,
      @JsonKey(name: 'alt_description') required this.description,
      required this.color,
      required this.blurHash,
      required this.urls,
      required this.links,
      required this.user});

  factory _$UnsplashImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashImageModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'alt_description')
  final String description;
  @override
  final String color;
  @override
  final String blurHash;
  @override
  final UnsplashImageUrls urls;
  @override
  final UnsplashLinks links;
  @override
  final UnsplashUser user;

  @override
  String toString() {
    return 'UnsplashImageModel(id: $id, description: $description, color: $color, blurHash: $blurHash, urls: $urls, links: $links, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurHash, blurHash) ||
                other.blurHash == blurHash) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, description, color, blurHash, urls, links, user);

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashImageModelImplCopyWith<_$UnsplashImageModelImpl> get copyWith =>
      __$$UnsplashImageModelImplCopyWithImpl<_$UnsplashImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashImageModelImplToJson(
      this,
    );
  }
}

abstract class _UnsplashImageModel implements UnsplashImageModel {
  const factory _UnsplashImageModel(
      {required final String id,
      @JsonKey(name: 'alt_description') required final String description,
      required final String color,
      required final String blurHash,
      required final UnsplashImageUrls urls,
      required final UnsplashLinks links,
      required final UnsplashUser user}) = _$UnsplashImageModelImpl;

  factory _UnsplashImageModel.fromJson(Map<String, dynamic> json) =
      _$UnsplashImageModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'alt_description')
  String get description;
  @override
  String get color;
  @override
  String get blurHash;
  @override
  UnsplashImageUrls get urls;
  @override
  UnsplashLinks get links;
  @override
  UnsplashUser get user;

  /// Create a copy of UnsplashImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsplashImageModelImplCopyWith<_$UnsplashImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnsplashImageUrls _$UnsplashImageUrlsFromJson(Map<String, dynamic> json) {
  return _UnsplashImageUrls.fromJson(json);
}

/// @nodoc
mixin _$UnsplashImageUrls {
  String get raw => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;

  /// Serializes this UnsplashImageUrls to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsplashImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsplashImageUrlsCopyWith<UnsplashImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashImageUrlsCopyWith<$Res> {
  factory $UnsplashImageUrlsCopyWith(
          UnsplashImageUrls value, $Res Function(UnsplashImageUrls) then) =
      _$UnsplashImageUrlsCopyWithImpl<$Res, UnsplashImageUrls>;
  @useResult
  $Res call(
      {String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class _$UnsplashImageUrlsCopyWithImpl<$Res, $Val extends UnsplashImageUrls>
    implements $UnsplashImageUrlsCopyWith<$Res> {
  _$UnsplashImageUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsplashImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnsplashImageUrlsImplCopyWith<$Res>
    implements $UnsplashImageUrlsCopyWith<$Res> {
  factory _$$UnsplashImageUrlsImplCopyWith(_$UnsplashImageUrlsImpl value,
          $Res Function(_$UnsplashImageUrlsImpl) then) =
      __$$UnsplashImageUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class __$$UnsplashImageUrlsImplCopyWithImpl<$Res>
    extends _$UnsplashImageUrlsCopyWithImpl<$Res, _$UnsplashImageUrlsImpl>
    implements _$$UnsplashImageUrlsImplCopyWith<$Res> {
  __$$UnsplashImageUrlsImplCopyWithImpl(_$UnsplashImageUrlsImpl _value,
      $Res Function(_$UnsplashImageUrlsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnsplashImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
  }) {
    return _then(_$UnsplashImageUrlsImpl(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UnsplashImageUrlsImpl implements _UnsplashImageUrls {
  const _$UnsplashImageUrlsImpl(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb});

  factory _$UnsplashImageUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashImageUrlsImplFromJson(json);

  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  @override
  String toString() {
    return 'UnsplashImageUrls(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashImageUrlsImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, raw, full, regular, small, thumb);

  /// Create a copy of UnsplashImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashImageUrlsImplCopyWith<_$UnsplashImageUrlsImpl> get copyWith =>
      __$$UnsplashImageUrlsImplCopyWithImpl<_$UnsplashImageUrlsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashImageUrlsImplToJson(
      this,
    );
  }
}

abstract class _UnsplashImageUrls implements UnsplashImageUrls {
  const factory _UnsplashImageUrls(
      {required final String raw,
      required final String full,
      required final String regular,
      required final String small,
      required final String thumb}) = _$UnsplashImageUrlsImpl;

  factory _UnsplashImageUrls.fromJson(Map<String, dynamic> json) =
      _$UnsplashImageUrlsImpl.fromJson;

  @override
  String get raw;
  @override
  String get full;
  @override
  String get regular;
  @override
  String get small;
  @override
  String get thumb;

  /// Create a copy of UnsplashImageUrls
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsplashImageUrlsImplCopyWith<_$UnsplashImageUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnsplashLinks _$UnsplashLinksFromJson(Map<String, dynamic> json) {
  return _UnsplashLinks.fromJson(json);
}

/// @nodoc
mixin _$UnsplashLinks {
  String get self => throw _privateConstructorUsedError;
  String get html => throw _privateConstructorUsedError;

  /// Serializes this UnsplashLinks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsplashLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsplashLinksCopyWith<UnsplashLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashLinksCopyWith<$Res> {
  factory $UnsplashLinksCopyWith(
          UnsplashLinks value, $Res Function(UnsplashLinks) then) =
      _$UnsplashLinksCopyWithImpl<$Res, UnsplashLinks>;
  @useResult
  $Res call({String self, String html});
}

/// @nodoc
class _$UnsplashLinksCopyWithImpl<$Res, $Val extends UnsplashLinks>
    implements $UnsplashLinksCopyWith<$Res> {
  _$UnsplashLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsplashLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
  }) {
    return _then(_value.copyWith(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnsplashLinksImplCopyWith<$Res>
    implements $UnsplashLinksCopyWith<$Res> {
  factory _$$UnsplashLinksImplCopyWith(
          _$UnsplashLinksImpl value, $Res Function(_$UnsplashLinksImpl) then) =
      __$$UnsplashLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String self, String html});
}

/// @nodoc
class __$$UnsplashLinksImplCopyWithImpl<$Res>
    extends _$UnsplashLinksCopyWithImpl<$Res, _$UnsplashLinksImpl>
    implements _$$UnsplashLinksImplCopyWith<$Res> {
  __$$UnsplashLinksImplCopyWithImpl(
      _$UnsplashLinksImpl _value, $Res Function(_$UnsplashLinksImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnsplashLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = null,
    Object? html = null,
  }) {
    return _then(_$UnsplashLinksImpl(
      self: null == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UnsplashLinksImpl implements _UnsplashLinks {
  const _$UnsplashLinksImpl({required this.self, required this.html});

  factory _$UnsplashLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashLinksImplFromJson(json);

  @override
  final String self;
  @override
  final String html;

  @override
  String toString() {
    return 'UnsplashLinks(self: $self, html: $html)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashLinksImpl &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, self, html);

  /// Create a copy of UnsplashLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashLinksImplCopyWith<_$UnsplashLinksImpl> get copyWith =>
      __$$UnsplashLinksImplCopyWithImpl<_$UnsplashLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashLinksImplToJson(
      this,
    );
  }
}

abstract class _UnsplashLinks implements UnsplashLinks {
  const factory _UnsplashLinks(
      {required final String self,
      required final String html}) = _$UnsplashLinksImpl;

  factory _UnsplashLinks.fromJson(Map<String, dynamic> json) =
      _$UnsplashLinksImpl.fromJson;

  @override
  String get self;
  @override
  String get html;

  /// Create a copy of UnsplashLinks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsplashLinksImplCopyWith<_$UnsplashLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnsplashUser _$UnsplashUserFromJson(Map<String, dynamic> json) {
  return _UnsplashUser.fromJson(json);
}

/// @nodoc
mixin _$UnsplashUser {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  UnsplashUserProfileImages get profileImage =>
      throw _privateConstructorUsedError;
  UnsplashLinks get links => throw _privateConstructorUsedError;

  /// Serializes this UnsplashUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsplashUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsplashUserCopyWith<UnsplashUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashUserCopyWith<$Res> {
  factory $UnsplashUserCopyWith(
          UnsplashUser value, $Res Function(UnsplashUser) then) =
      _$UnsplashUserCopyWithImpl<$Res, UnsplashUser>;
  @useResult
  $Res call(
      {String id,
      String username,
      String name,
      String? location,
      UnsplashUserProfileImages profileImage,
      UnsplashLinks links});

  $UnsplashUserProfileImagesCopyWith<$Res> get profileImage;
  $UnsplashLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$UnsplashUserCopyWithImpl<$Res, $Val extends UnsplashUser>
    implements $UnsplashUserCopyWith<$Res> {
  _$UnsplashUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsplashUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? location = freezed,
    Object? profileImage = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as UnsplashUserProfileImages,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UnsplashLinks,
    ) as $Val);
  }

  /// Create a copy of UnsplashUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnsplashUserProfileImagesCopyWith<$Res> get profileImage {
    return $UnsplashUserProfileImagesCopyWith<$Res>(_value.profileImage,
        (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }

  /// Create a copy of UnsplashUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnsplashLinksCopyWith<$Res> get links {
    return $UnsplashLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnsplashUserImplCopyWith<$Res>
    implements $UnsplashUserCopyWith<$Res> {
  factory _$$UnsplashUserImplCopyWith(
          _$UnsplashUserImpl value, $Res Function(_$UnsplashUserImpl) then) =
      __$$UnsplashUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String name,
      String? location,
      UnsplashUserProfileImages profileImage,
      UnsplashLinks links});

  @override
  $UnsplashUserProfileImagesCopyWith<$Res> get profileImage;
  @override
  $UnsplashLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$UnsplashUserImplCopyWithImpl<$Res>
    extends _$UnsplashUserCopyWithImpl<$Res, _$UnsplashUserImpl>
    implements _$$UnsplashUserImplCopyWith<$Res> {
  __$$UnsplashUserImplCopyWithImpl(
      _$UnsplashUserImpl _value, $Res Function(_$UnsplashUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnsplashUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? location = freezed,
    Object? profileImage = null,
    Object? links = null,
  }) {
    return _then(_$UnsplashUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as UnsplashUserProfileImages,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as UnsplashLinks,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UnsplashUserImpl implements _UnsplashUser {
  const _$UnsplashUserImpl(
      {required this.id,
      required this.username,
      required this.name,
      required this.location,
      required this.profileImage,
      required this.links});

  factory _$UnsplashUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashUserImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String name;
  @override
  final String? location;
  @override
  final UnsplashUserProfileImages profileImage;
  @override
  final UnsplashLinks links;

  @override
  String toString() {
    return 'UnsplashUser(id: $id, username: $username, name: $name, location: $location, profileImage: $profileImage, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, name, location, profileImage, links);

  /// Create a copy of UnsplashUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashUserImplCopyWith<_$UnsplashUserImpl> get copyWith =>
      __$$UnsplashUserImplCopyWithImpl<_$UnsplashUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashUserImplToJson(
      this,
    );
  }
}

abstract class _UnsplashUser implements UnsplashUser {
  const factory _UnsplashUser(
      {required final String id,
      required final String username,
      required final String name,
      required final String? location,
      required final UnsplashUserProfileImages profileImage,
      required final UnsplashLinks links}) = _$UnsplashUserImpl;

  factory _UnsplashUser.fromJson(Map<String, dynamic> json) =
      _$UnsplashUserImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get name;
  @override
  String? get location;
  @override
  UnsplashUserProfileImages get profileImage;
  @override
  UnsplashLinks get links;

  /// Create a copy of UnsplashUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsplashUserImplCopyWith<_$UnsplashUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnsplashUserProfileImages _$UnsplashUserProfileImagesFromJson(
    Map<String, dynamic> json) {
  return _UnsplashUserProfileImages.fromJson(json);
}

/// @nodoc
mixin _$UnsplashUserProfileImages {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  /// Serializes this UnsplashUserProfileImages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsplashUserProfileImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsplashUserProfileImagesCopyWith<UnsplashUserProfileImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashUserProfileImagesCopyWith<$Res> {
  factory $UnsplashUserProfileImagesCopyWith(UnsplashUserProfileImages value,
          $Res Function(UnsplashUserProfileImages) then) =
      _$UnsplashUserProfileImagesCopyWithImpl<$Res, UnsplashUserProfileImages>;
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class _$UnsplashUserProfileImagesCopyWithImpl<$Res,
        $Val extends UnsplashUserProfileImages>
    implements $UnsplashUserProfileImagesCopyWith<$Res> {
  _$UnsplashUserProfileImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsplashUserProfileImages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnsplashUserProfileImagesImplCopyWith<$Res>
    implements $UnsplashUserProfileImagesCopyWith<$Res> {
  factory _$$UnsplashUserProfileImagesImplCopyWith(
          _$UnsplashUserProfileImagesImpl value,
          $Res Function(_$UnsplashUserProfileImagesImpl) then) =
      __$$UnsplashUserProfileImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class __$$UnsplashUserProfileImagesImplCopyWithImpl<$Res>
    extends _$UnsplashUserProfileImagesCopyWithImpl<$Res,
        _$UnsplashUserProfileImagesImpl>
    implements _$$UnsplashUserProfileImagesImplCopyWith<$Res> {
  __$$UnsplashUserProfileImagesImplCopyWithImpl(
      _$UnsplashUserProfileImagesImpl _value,
      $Res Function(_$UnsplashUserProfileImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnsplashUserProfileImages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$UnsplashUserProfileImagesImpl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$UnsplashUserProfileImagesImpl implements _UnsplashUserProfileImages {
  const _$UnsplashUserProfileImagesImpl(
      {required this.small, required this.medium, required this.large});

  factory _$UnsplashUserProfileImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsplashUserProfileImagesImplFromJson(json);

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'UnsplashUserProfileImages(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsplashUserProfileImagesImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  /// Create a copy of UnsplashUserProfileImages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsplashUserProfileImagesImplCopyWith<_$UnsplashUserProfileImagesImpl>
      get copyWith => __$$UnsplashUserProfileImagesImplCopyWithImpl<
          _$UnsplashUserProfileImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsplashUserProfileImagesImplToJson(
      this,
    );
  }
}

abstract class _UnsplashUserProfileImages implements UnsplashUserProfileImages {
  const factory _UnsplashUserProfileImages(
      {required final String small,
      required final String medium,
      required final String large}) = _$UnsplashUserProfileImagesImpl;

  factory _UnsplashUserProfileImages.fromJson(Map<String, dynamic> json) =
      _$UnsplashUserProfileImagesImpl.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;

  /// Create a copy of UnsplashUserProfileImages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsplashUserProfileImagesImplCopyWith<_$UnsplashUserProfileImagesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
