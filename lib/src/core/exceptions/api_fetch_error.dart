class ApiFetchException implements Exception {
  final String message;
  final int? statusCode;
  final String? endpoint;
  final String? error;

  ApiFetchException({
    required this.message,
    this.statusCode,
    this.endpoint,
    this.error,
  });

  @override
  String toString() {
    return 'ApiFetchException: $message'
        '${statusCode != null ? " (Status Code: $statusCode)" : ""}'
        '${endpoint != null ? " [Endpoint: $endpoint]" : ""}';
  }
}

class GenericError implements Exception {
  final String message;

  GenericError({required this.message});

  @override
  String toString() {
    return 'GenericError: $message';
  }
}
