import 'package:betalent_app/src/home/models/employee_model.dart';

class HomeState {
  final List<EmployeeModel> employees;
  final List<EmployeeModel> employeesFiltered;
  final bool isLoading;
  final bool isError;
  final String messageError;

  HomeState({
    required this.employees,
    this.isLoading = false,
    this.isError = false,
    this.messageError = '',
    this.employeesFiltered = const [],
  });

  factory HomeState.initial() {
    return HomeState(
      employees: [],
      isLoading: false,
    );
  }

  HomeState copyWith({
    List<EmployeeModel>? employees,
    List<EmployeeModel>? employeesFiltered,
    bool? isLoading,
    bool? isError,
    String? messageError,
  }) {
    return HomeState(
      employees: employees ?? this.employees,
      isLoading: isLoading ?? this.isLoading,
      isError: isError ?? this.isError,
      messageError: messageError ?? this.messageError,
      employeesFiltered: employeesFiltered ?? this.employeesFiltered,
    );
  }
}
