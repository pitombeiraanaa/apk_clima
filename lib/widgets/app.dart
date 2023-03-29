import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:previsao_tempo/widgets/home.dart';
import 'package:previsao_tempo/widgets/resumo.dart';

class VidenteApp extends StatelessWidget {
  const VidenteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vidente',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
