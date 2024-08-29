// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TranslateModel _$TranslateModelFromJson(Map<String, dynamic> json) {
  return _TranslateModel.fromJson(json);
}

/// @nodoc
mixin _$TranslateModel {
  DetectedLanguage get detectedLanguage => throw _privateConstructorUsedError;
  String get translatedText => throw _privateConstructorUsedError;

  /// Serializes this TranslateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TranslateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslateModelCopyWith<TranslateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslateModelCopyWith<$Res> {
  factory $TranslateModelCopyWith(
          TranslateModel value, $Res Function(TranslateModel) then) =
      _$TranslateModelCopyWithImpl<$Res, TranslateModel>;
  @useResult
  $Res call({DetectedLanguage detectedLanguage, String translatedText});

  $DetectedLanguageCopyWith<$Res> get detectedLanguage;
}

/// @nodoc
class _$TranslateModelCopyWithImpl<$Res, $Val extends TranslateModel>
    implements $TranslateModelCopyWith<$Res> {
  _$TranslateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detectedLanguage = null,
    Object? translatedText = null,
  }) {
    return _then(_value.copyWith(
      detectedLanguage: null == detectedLanguage
          ? _value.detectedLanguage
          : detectedLanguage // ignore: cast_nullable_to_non_nullable
              as DetectedLanguage,
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TranslateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetectedLanguageCopyWith<$Res> get detectedLanguage {
    return $DetectedLanguageCopyWith<$Res>(_value.detectedLanguage, (value) {
      return _then(_value.copyWith(detectedLanguage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TranslateModelImplCopyWith<$Res>
    implements $TranslateModelCopyWith<$Res> {
  factory _$$TranslateModelImplCopyWith(_$TranslateModelImpl value,
          $Res Function(_$TranslateModelImpl) then) =
      __$$TranslateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetectedLanguage detectedLanguage, String translatedText});

  @override
  $DetectedLanguageCopyWith<$Res> get detectedLanguage;
}

/// @nodoc
class __$$TranslateModelImplCopyWithImpl<$Res>
    extends _$TranslateModelCopyWithImpl<$Res, _$TranslateModelImpl>
    implements _$$TranslateModelImplCopyWith<$Res> {
  __$$TranslateModelImplCopyWithImpl(
      _$TranslateModelImpl _value, $Res Function(_$TranslateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detectedLanguage = null,
    Object? translatedText = null,
  }) {
    return _then(_$TranslateModelImpl(
      detectedLanguage: null == detectedLanguage
          ? _value.detectedLanguage
          : detectedLanguage // ignore: cast_nullable_to_non_nullable
              as DetectedLanguage,
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranslateModelImpl implements _TranslateModel {
  const _$TranslateModelImpl(
      {required this.detectedLanguage, required this.translatedText});

  factory _$TranslateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranslateModelImplFromJson(json);

  @override
  final DetectedLanguage detectedLanguage;
  @override
  final String translatedText;

  @override
  String toString() {
    return 'TranslateModel(detectedLanguage: $detectedLanguage, translatedText: $translatedText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateModelImpl &&
            (identical(other.detectedLanguage, detectedLanguage) ||
                other.detectedLanguage == detectedLanguage) &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, detectedLanguage, translatedText);

  /// Create a copy of TranslateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateModelImplCopyWith<_$TranslateModelImpl> get copyWith =>
      __$$TranslateModelImplCopyWithImpl<_$TranslateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranslateModelImplToJson(
      this,
    );
  }
}

abstract class _TranslateModel implements TranslateModel {
  const factory _TranslateModel(
      {required final DetectedLanguage detectedLanguage,
      required final String translatedText}) = _$TranslateModelImpl;

  factory _TranslateModel.fromJson(Map<String, dynamic> json) =
      _$TranslateModelImpl.fromJson;

  @override
  DetectedLanguage get detectedLanguage;
  @override
  String get translatedText;

  /// Create a copy of TranslateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslateModelImplCopyWith<_$TranslateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetectedLanguage _$DetectedLanguageFromJson(Map<String, dynamic> json) {
  return _DetectedLanguage.fromJson(json);
}

/// @nodoc
mixin _$DetectedLanguage {
  String get language => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;

  /// Serializes this DetectedLanguage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetectedLanguage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetectedLanguageCopyWith<DetectedLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectedLanguageCopyWith<$Res> {
  factory $DetectedLanguageCopyWith(
          DetectedLanguage value, $Res Function(DetectedLanguage) then) =
      _$DetectedLanguageCopyWithImpl<$Res, DetectedLanguage>;
  @useResult
  $Res call({String language, double confidence});
}

/// @nodoc
class _$DetectedLanguageCopyWithImpl<$Res, $Val extends DetectedLanguage>
    implements $DetectedLanguageCopyWith<$Res> {
  _$DetectedLanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetectedLanguage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? confidence = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetectedLanguageImplCopyWith<$Res>
    implements $DetectedLanguageCopyWith<$Res> {
  factory _$$DetectedLanguageImplCopyWith(_$DetectedLanguageImpl value,
          $Res Function(_$DetectedLanguageImpl) then) =
      __$$DetectedLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language, double confidence});
}

/// @nodoc
class __$$DetectedLanguageImplCopyWithImpl<$Res>
    extends _$DetectedLanguageCopyWithImpl<$Res, _$DetectedLanguageImpl>
    implements _$$DetectedLanguageImplCopyWith<$Res> {
  __$$DetectedLanguageImplCopyWithImpl(_$DetectedLanguageImpl _value,
      $Res Function(_$DetectedLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetectedLanguage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? confidence = null,
  }) {
    return _then(_$DetectedLanguageImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetectedLanguageImpl implements _DetectedLanguage {
  const _$DetectedLanguageImpl(
      {required this.language, required this.confidence});

  factory _$DetectedLanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetectedLanguageImplFromJson(json);

  @override
  final String language;
  @override
  final double confidence;

  @override
  String toString() {
    return 'DetectedLanguage(language: $language, confidence: $confidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetectedLanguageImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, confidence);

  /// Create a copy of DetectedLanguage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetectedLanguageImplCopyWith<_$DetectedLanguageImpl> get copyWith =>
      __$$DetectedLanguageImplCopyWithImpl<_$DetectedLanguageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetectedLanguageImplToJson(
      this,
    );
  }
}

abstract class _DetectedLanguage implements DetectedLanguage {
  const factory _DetectedLanguage(
      {required final String language,
      required final double confidence}) = _$DetectedLanguageImpl;

  factory _DetectedLanguage.fromJson(Map<String, dynamic> json) =
      _$DetectedLanguageImpl.fromJson;

  @override
  String get language;
  @override
  double get confidence;

  /// Create a copy of DetectedLanguage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetectedLanguageImplCopyWith<_$DetectedLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
