// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslationModel {
  /// The translation id, this will be a language id.
  String get id => throw _privateConstructorUsedError;

  /// Language name.
  String get lang => throw _privateConstructorUsedError;

  /// Translated quote table name.
  String get tableName => throw _privateConstructorUsedError;

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationModelCopyWith<TranslationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationModelCopyWith<$Res> {
  factory $TranslationModelCopyWith(
          TranslationModel value, $Res Function(TranslationModel) then) =
      _$TranslationModelCopyWithImpl<$Res, TranslationModel>;
  @useResult
  $Res call({String id, String lang, String tableName});
}

/// @nodoc
class _$TranslationModelCopyWithImpl<$Res, $Val extends TranslationModel>
    implements $TranslationModelCopyWith<$Res> {
  _$TranslationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lang = null,
    Object? tableName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationModelImplCopyWith<$Res>
    implements $TranslationModelCopyWith<$Res> {
  factory _$$TranslationModelImplCopyWith(_$TranslationModelImpl value,
          $Res Function(_$TranslationModelImpl) then) =
      __$$TranslationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String lang, String tableName});
}

/// @nodoc
class __$$TranslationModelImplCopyWithImpl<$Res>
    extends _$TranslationModelCopyWithImpl<$Res, _$TranslationModelImpl>
    implements _$$TranslationModelImplCopyWith<$Res> {
  __$$TranslationModelImplCopyWithImpl(_$TranslationModelImpl _value,
      $Res Function(_$TranslationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lang = null,
    Object? tableName = null,
  }) {
    return _then(_$TranslationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TranslationModelImpl implements _TranslationModel {
  const _$TranslationModelImpl(
      {required this.id, required this.lang, required this.tableName});

  /// The translation id, this will be a language id.
  @override
  final String id;

  /// Language name.
  @override
  final String lang;

  /// Translated quote table name.
  @override
  final String tableName;

  @override
  String toString() {
    return 'TranslationModel(id: $id, lang: $lang, tableName: $tableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, lang, tableName);

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationModelImplCopyWith<_$TranslationModelImpl> get copyWith =>
      __$$TranslationModelImplCopyWithImpl<_$TranslationModelImpl>(
          this, _$identity);
}

abstract class _TranslationModel implements TranslationModel {
  const factory _TranslationModel(
      {required final String id,
      required final String lang,
      required final String tableName}) = _$TranslationModelImpl;

  /// The translation id, this will be a language id.
  @override
  String get id;

  /// Language name.
  @override
  String get lang;

  /// Translated quote table name.
  @override
  String get tableName;

  /// Create a copy of TranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationModelImplCopyWith<_$TranslationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
