import 'package:flutter/material.dart';

class TableHeaderComponent extends StatelessWidget {
  const TableHeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      decoration: const BoxDecoration(
        color: Color(0xFFEDEFFB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 14),
        child: Row(
          children: [
            SizedBox(width: 15.5),
            Text(
              'Foto',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w500,
                color: Color(0xFF1C1C1C),
              ),
            ),
            SizedBox(width: 24),
            Text(
              'Nome',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w500,
                color: Color(0xFF1C1C1C),
              ),
            ),
            Spacer(),
            Icon(Icons.circle, size: 8),
            SizedBox(width: 28.5),
          ],
        ),
      ),
    );
  }
}
