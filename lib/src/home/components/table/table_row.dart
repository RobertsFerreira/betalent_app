import 'package:flutter/material.dart';

class TableRowComponent extends StatefulWidget {
  const TableRowComponent({super.key});

  @override
  State<TableRowComponent> createState() => _TableRowComponentState();
}

class _TableRowComponentState extends State<TableRowComponent> {
  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      iconColor: Color(0xFF0500FF),
      collapsedIconColor: Color(0xFF0500FF),
      shape: Border(),
      title: Row(
        children: [
          SizedBox(
            height: 34,
            width: 34,
            child: CircleAvatar(
              child: Text('A'),
            ),
          ),
          SizedBox(width: 24),
          Text(
            'Giovana L. Arruda',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'HelveticaNeue',
              fontWeight: FontWeight.w400,
              color: Color(0xFF1C1C1C),
            ),
          ),
        ],
      ),
      children: [
        SizedBox(height: 31.5),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cargo',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C1C1C),
                ),
              ),
              Text(
                'Front-end',
                style: TextStyle(
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
          padding: EdgeInsets.only(left: 16, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Data de admissão',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C1C1C),
                ),
              ),
              Text(
                '00/00/00',
                style: TextStyle(
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
          padding: EdgeInsets.only(left: 16, right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Telefone',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1C1C1C),
                ),
              ),
              Text(
                '+55 (32) 55555-5555',
                style: TextStyle(
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
