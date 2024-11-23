import 'package:betalent_app/src/core/exceptions/api_fetch_error.dart';
import 'package:betalent_app/src/home/models/employee_model.dart';
import 'package:betalent_app/src/home/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../utils/mock/fake_data.dart';

class DioMock extends Mock implements Dio {}

void main() {
  final dioMock = DioMock();

  final repository = HomeRepository(dio: dioMock);
  final params = {'page': 1, 'limit': 0};

  test('Should be return a list of employees', () async {
    when(
      () => dioMock.get('/employees', queryParameters: params),
    ).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(),
        statusCode: 200,
        data: fakeEmployees,
      ),
    );

    final employees = await repository.getEmployees(
      page: params['page']!,
      limit: params['limit']!,
    );

    expect(employees, isA<List<EmployeeModel>>());
  });

  test('Should return a GenericError when an error occurs in the request.',
      () async {
    when(
      () => dioMock.get('/employees', queryParameters: params),
    ).thenThrow(
      Exception('Failed to retrieve employees'),
    );

    try {
      await repository.getEmployees(
        page: params['page']!,
        limit: params['limit']!,
      );
    } catch (e) {
      expect(e, isA<GenericError>());
      final error = e as GenericError;
      final message = error.message;
      expect(message, equals('Failed to retrieve employees'));
    }
  });

  test(
      'Should return an ApiFetchException when an error occurs in the request.',
      () async {
    when(
      () => dioMock.get('/employees', queryParameters: params),
    ).thenThrow(
      DioException(
        message: 'Failed to retrieve employees',
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: 500,
        ),
        requestOptions: RequestOptions(),
      ),
    );

    try {
      await repository.getEmployees(
        page: params['page']!,
        limit: params['limit']!,
      );
    } catch (e) {
      expect(e, isA<ApiFetchException>());
      final error = e as ApiFetchException;
      expect(
        error.error,
        equals('Failed to retrieve employees'),
      );
      expect(
        error.message,
        equals('Failed to fetch employees'),
      );
      expect(error.statusCode, equals(500));
    }
  });
}