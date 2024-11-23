import 'package:flutter/material.dart';

import '../components/text_field_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20, top: 22),
          child: SizedBox(
            height: 45,
            width: 45,
            child: CircleAvatar(
              radius: 106.38,
              backgroundColor: Color(0xFFF5F5F5),
              child: Text(
                'CG',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1c1c1c),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 11, right: 21),
            child: IconButton(
              onPressed: () {},
              icon: const Badge(
                backgroundColor: Color(0xff0500ff),
                label: Text(
                  '2',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                ),
                child: Icon(Icons.notifications_none_outlined, size: 24),
              ),
            ),
          ),
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              'Funcionários',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 15),
          TextFieldComponent(hintText: 'Pesquisar'),
        ],
      ),
    );
  }
}
