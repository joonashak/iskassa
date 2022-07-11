import 'package:flutter/material.dart';

class TransactionTable extends StatelessWidget {
  const TransactionTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const <DataColumn>[
      DataColumn(label: Text('col'))
    ], rows: const <DataRow>[
      DataRow(cells: <DataCell>[DataCell(Text('data'))])
    ]);
  }
}
