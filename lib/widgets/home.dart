import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:previsao_tempo/models/previsao_hora.dart';
import 'package:previsao_tempo/services/previsao_service.dart';
import 'package:previsao_tempo/widgets/proximas_temperaturas.dart';
import 'package:previsao_tempo/widgets/resumo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<PrevisaoHora> ultimasPrevisoes;

  @override
  void initState() {
    super.initState();
    PrevisaoService service = PrevisaoService();
    ultimasPrevisoes = service.recuperarUltimasPrevisoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vidente'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Resumo(
            cidade: 'Barra Mansa-RJ',
            temperaturaAtual: 33,
            temperaturaMaxima: 40,
            temperaturaMinima: 27,
            descricao: 'Ensolarado',
            numeroIcone: 1,
          ),
          const Padding(padding: EdgeInsets.all(10)),
          ProximasTemperaturas(previsoes: ultimasPrevisoes),
        ]),
      ),
    );
  }
}
