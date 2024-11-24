import 'package:betalent_app/src/home/components/table/table_row.dart';
import 'package:betalent_app/src/home/models/employee_model.dart';
import 'package:flutter/material.dart';

import 'table_header.dart';

class TableComponent extends StatefulWidget {
  final List<EmployeeModel> employees;
  const TableComponent({super.key, required this.employees});

  @override
  State<TableComponent> createState() => _TableComponentState();
}

class _TableComponentState extends State<TableComponent> {
  @override
  Widget build(BuildContext context) {
    if (widget.employees.isEmpty) {
      return const Center(
        child: Text('No Employees Available'),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 637,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFDFDFDF),
            strokeAlign: 1,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: Column(
          children: [
            //Header
            const TableHeaderComponent(),
            //Body
            SizedBox(
              height: 590,
              child: SingleChildScrollView(
                child: ListView.separated(
                  itemCount: widget.employees.length,
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => const Divider(),
                  itemBuilder: (_, index) {
                    final employee = widget.employees[index];
                    return TableRowComponent(employee: employee);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
