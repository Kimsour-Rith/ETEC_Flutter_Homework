import 'package:flutter/material.dart';

final List<Map<String, dynamic>> books = [
  {'id': 100, 'name': 'Rith Kimsour', 'gender': Icons.female},
  {'id': 102, 'name': 'Janny', 'gender': Icons.male},
  {'id': 101, 'name': 'Cattie', 'gender': Icons.female},
  {'id': 103, 'name': 'Jonh Doe', 'gender': Icons.male},
  {'id': 104, 'name': 'Zeny', 'gender': Icons.male},
  {'id': 105, 'name': 'Ellie', 'gender': Icons.female},
  {'id': 106, 'name': 'Bella', 'gender': Icons.female},
  {'id': 107, 'name': 'MoMo', 'gender': Icons.female},
  {'id': 108, 'name': 'Fame', 'gender': Icons.male},
];

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: ListView(
        children: [createDataTable()],
      ),
    );
  }

  DataTable createDataTable() {
    return DataTable(
      columns: createColumns(),
      rows: createRows(),
      dividerThickness: 5,
      dataRowHeight: 80,
      showBottomBorder: true,
      headingTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 8, 1, 1),
        fontSize: 16),
      headingRowColor: MaterialStateProperty.resolveWith(
        (states) => const Color.fromARGB(255, 143, 131, 233)),
    );
  }

  List<DataColumn> createColumns() {
    return [
      const DataColumn(label: Text('ID')),
      const DataColumn(label: Text('Name')),
      const DataColumn(label: Text('gender')),
    ];
  }

  List<DataRow> createRows() {
    return books
      .map((book) => DataRow(cells: [
            DataCell(Text('#' + book['id'].toString(),
              style: const TextStyle(fontWeight: FontWeight.bold))),
            DataCell(Text(book['name'],
              style: const TextStyle(fontWeight: FontWeight.bold))),
            DataCell(Icon(
              book['gender'],
              color:
                book['gender'] == Icons.female ? Colors.red : Colors.blue,
            ))
          ]))
      .toList();
  }
}
