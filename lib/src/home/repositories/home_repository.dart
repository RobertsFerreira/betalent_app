import 'package:betalent_app/src/core/exceptions/api_fetch_error.dart';
import 'package:betalent_app/src/home/enums/enum_employee_filter.dart';
import 'package:betalent_app/src/home/models/employee_model.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  final Dio _dio;

  HomeRepository({required Dio dio}) : _dio = dio;

  Future<List<EmployeeModel>> getEmployees({
    EnumEmployeeFilter typeFilter = EnumEmployeeFilter.nenhum,
    String valueFilter = '',
  }) async {
    try {
      final Map<String, dynamic> params = {};

      if (typeFilter != EnumEmployeeFilter.nenhum) {
        final filterParams = {typeFilter.slug: valueFilter};
        params.addEntries(filterParams.entries);
      }

      final response = await _dio.get('/employees', queryParameters: params);

      final employeesMap =
          (response.data['employees'] as List<Map<String, dynamic>>);

      final employees =
          employeesMap.map<EmployeeModel>(EmployeeModel.fromJson).toList();

      return employees;
    } on DioException catch (e) {
      throw ApiFetchException(
        message: 'Failed to fetch employees',
        statusCode: e.response?.statusCode,
        endpoint: e.requestOptions.uri.toString(),
        error: e.message,
      );
    } on Exception catch (e) {
      throw GenericError(
        message: e.toString().replaceAll('Exception: ', ''),
      );
    }
  }
}
