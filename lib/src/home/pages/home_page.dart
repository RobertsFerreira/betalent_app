import 'package:betalent_app/src/home/components/table/table_component.dart';
import 'package:betalent_app/src/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import '../components/text_field_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController _controller;

  @override
  void initState() {
    super.initState();
    _controller = HomeController();
    _fetchEmployees();
  }

  Future<void> _fetchEmployees() async {
    await _controller.fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
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
                smallSize: 20,
                largeSize: 20,
                label: Text(
                  '02',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                ),
                child: Icon(Icons.notifications_none_outlined, size: 24),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Padding(
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
          const SizedBox(height: 15),
          TextFieldComponent(
            hintText: 'Pesquisar',
            onChanged: _controller.filterEmployees,
          ),
          const SizedBox(height: 24),
          ValueListenableBuilder(
            valueListenable: _controller.state,
            builder: (_, newState, __) {
              if (newState.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (newState.isError) {
                return Center(
                  child: Text(newState.messageError),
                );
              }

              final employees = newState.employeesFiltered;

              return TableComponent(employees: employees);
            },
          ),
        ],
      ),
    );
  }
}
