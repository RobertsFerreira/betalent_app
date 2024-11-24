import 'package:betalent_app/src/home/repositories/home_repository.dart';
import 'package:betalent_app/src/home/states/home_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeController {
  late ValueNotifier<HomeState> state;
  late final Dio _dio;

  late final HomeRepository homeRepository;

  HomeController() {
    _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8080'));
    homeRepository = HomeRepository(client: _dio);
    state = ValueNotifier(HomeState.initial());
  }

  Future<void> fetchEmployees() async {
    try {
      state.value = state.value.copyWith(isLoading: true);

      final employees = await homeRepository.fetchEmployees();

      state.value = state.value.copyWith(employees: employees);
    } catch (e) {
      state.value = state.value.copyWith(
        isError: true,
        messageError: e.toString(),
      );
    } finally {
      state.value = state.value.copyWith(isLoading: false);
    }
  }
}
