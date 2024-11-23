class EmployeeModel {
  final int id;
  final String name;
  final String job;
  final DateTime admissionDate;
  final String phoneNumber;
  final String picture;

  EmployeeModel({
    required this.id,
    required this.name,
    required this.job,
    required this.admissionDate,
    required this.phoneNumber,
    required this.picture,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json['id'] as int,
      name: json['name'] as String,
      job: json['job'] as String,
      admissionDate: DateTime.parse(json['admission_date']),
      phoneNumber: json['phone'] as String,
      picture: json['image'] as String,
    );
  }
}
