import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

/// Represents the authentication token for each request.
@freezed
class AuthModel with _$AuthModel {
  /// Create a new [AuthModel].
  const factory AuthModel({
    /// An UUID string, unique per request.
    required String token,

    /// Unix time in seconds. It is the time when the token was issued.
    /// Will expire after a time window.
    required int issuedAt,
  }) = _AuthModel;

  /// Creates a new [AuthModel] from a JSON object.
  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
