import 'package:betalent_app/src/extensions/date_extensions.dart';
import 'package:betalent_app/src/extensions/string_extensions.dart';
import 'package:betalent_app/src/home/models/employee_model.dart';
import 'package:flutter/material.dart';

class TableRowComponent extends StatefulWidget {
  final EmployeeModel employee;
  const TableRowComponent({super.key, required this.employee});

  @override
  State<TableRowComponent> createState() => _TableRowComponentState();
}

class _TableRowComponentState extends State<TableRowComponent> {
  late final EmployeeModel employee;

  @override
  void initState() {
    super.initState();
    employee = widget.employee;
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: const Color(0xFF0500FF),
      collapsedIconColor: const Color(0xFF0500FF),
      shape: const Border(),
      title: Row(
        children: [
          SizedBox(
            height: 34,
            width: 34,
            child: CircleAvatar(
              child: Image.network(employee.picture),
            ),
          ),
          const SizedBox(width: 24),
          Text(
            employee.name,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'HelveticaNeue',
              fontWeight: FontWeight.w400,
              color: Color(0xFF1C1C1C),
            ),
          ),
        ],
      ),
      children: [
        const SizedBox(height: 31.5),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Cargo',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C1C1C),
                ),
              ),
              Text(
                employee.job,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1C1C1C),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Data de admissão',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C1C1C),
                ),
              ),
              Text(
                employee.admissionDate.brl,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1C1C1C),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Telefone',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C1C1C),
                ),
              ),
              Text(
                employee.phoneNumber.phoneNumberBrl,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1C1C1C),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
