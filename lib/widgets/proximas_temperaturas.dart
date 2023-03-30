import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:previsao_tempo/models/previsao_hora.dart';

class ProximasTemperaturas extends StatelessWidget {
  final List<PrevisaoHora> previsoes;

  const ProximasTemperaturas({
    super.key,
    required this.previsoes,
  });

  Card criarCardPrevisao(int i) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: AssetImage('images/${previsoes[i].numeroIcone}.png')),
          Padding(padding: EdgeInsets.all(2)),
          Text(previsoes[i].horario),
          Padding(padding: EdgeInsets.all(5)),
          Text('        ${previsoes[i].temperatura.toStringAsFixed(0)} °C'),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Text(previsoes[i].descricao),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: previsoes.length,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return criarCardPrevisao(i);
        },
      ),
    );
  }
}
