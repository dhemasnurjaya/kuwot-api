/// Base class for all failures
abstract class Failure {
  /// Create a new [Failure] with the provided [message].
  const Failure({required this.message});

  /// Failure message
  final String message;
}

/// A failure for when an unexpected error occurs.
class UnexpectedFailure extends Failure {
  /// Create a new [UnexpectedFailure] with the provided [message].
  const UnexpectedFailure({required super.message});
}

/// A failure for when data is not found.
///
/// For example, when a quote with the provided ID is not found.
class DataNotFoundFailure extends Failure {
  /// Create a new [DataNotFoundFailure] with the provided [message].
  const DataNotFoundFailure({required super.message});
}

/// A failure for when an invalid request is made.
///
/// For example, when the user provides an invalid language code.
class InvalidRequestFailure extends Failure {
  /// Create a new [InvalidRequestFailure] with the provided [message].
  const InvalidRequestFailure({required super.message});
}
