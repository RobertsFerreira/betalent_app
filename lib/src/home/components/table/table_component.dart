import 'package:betalent_app/src/home/components/table/table_row.dart';
import 'package:flutter/material.dart';

import 'table_header.dart';

class TableComponent extends StatefulWidget {
  const TableComponent({super.key});

  @override
  State<TableComponent> createState() => _TableComponentState();
}

class _TableComponentState extends State<TableComponent> {
  @override
  Widget build(BuildContext context) {
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
            ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (_, index) {
                return const TableRowComponent();
              },
            ),
          ],
        ),
      ),
    );
  }
}
