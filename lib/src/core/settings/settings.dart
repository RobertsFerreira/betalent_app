String get host {
  return const String.fromEnvironment(
    'host',
    defaultValue: 'localhost',
  );
}

String get port {
  return const String.fromEnvironment(
    'port',
    defaultValue: '8080',
  );
}
