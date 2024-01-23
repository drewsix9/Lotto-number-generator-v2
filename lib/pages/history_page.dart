import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:lotto_number_generator/widgets/myAppBar.dart';
import 'package:lotto_number_generator/widgets/myNavDrawer.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LottoDataBase>(
      builder: (context, value, child) => Scaffold(
        appBar: myAppBar('History'),
        drawer: const MyNavBar(),
        // body: SafeArea(),
      ),
    );
  }
}
