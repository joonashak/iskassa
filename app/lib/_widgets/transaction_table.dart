import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransactionTable extends StatelessWidget {
  const TransactionTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TableData(), child: const Smth());
  }
}

class TableData extends ChangeNotifier {
  final List<String> _data = ['moi', 'hei'];

  UnmodifiableListView<String> get data => UnmodifiableListView(_data);
}

class AcualTable extends StatelessWidget {
  const AcualTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const <DataColumn>[
      DataColumn(label: Text('col'))
    ], rows: const <DataRow>[
      DataRow(cells: <DataCell>[DataCell(Text('data'))])
    ]);
  }
}

class Smth extends StatelessWidget {
  const Smth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TableData>(
      builder: (context, value, child) {
        return Column(
          children: List<Text>.generate(
              value.data.length, (index) => Text(value.data[index])),
        );
      },
    );
  }
}
